from subscription.models import UserSubscription

from .models import RawImage


SUBSCRIPTION_NAMES = (
    'Atom',
    'Meteor',
    'Luna',
    'Sol',
    'Galaxia',

    'test_subscription',
    'test_subscription_empty',
)


def user_used_bytes(user):
    sizes = RawImage.objects\
        .filter(user = user)\
        .values_list('size', flat = True)
    return sum(sizes)


def user_used_percent(user):
    b = user_used_bytes(user)
    limit = user_byte_limit(user)
    return b * 100 / limit if limit > 0 else 100


def user_progress_class(user):
    p = user_used_percent(user)
    if p < 90: return 'progress-success'
    if p > 97: return 'progress-danger'
    return 'progress-warning'


def user_is_over_limit(user):
    return user_used_percent(user) >= 100

def user_get_subscription(user):
    if not user.is_authenticated():
        raise UserSubscription.DoesNotExist

    try:
        return UserSubscription.objects.get(user = user, subscription__name__in = SUBSCRIPTION_NAMES)
    except UserSubscription.MultipleObjectsReturned:
        return UserSubscription.objects.filter(user = user, subscription__name__in = SUBSCRIPTION_NAMES)[0]


def user_get_active_subscription(user):
    if not user.is_authenticated():
        raise UserSubscription.DoesNotExist

    try:
        us = UserSubscription.objects.get(user = user, subscription__name__in = SUBSCRIPTION_NAMES, active = True, cancelled = False)
    except UserSubscription.MultipleObjectsReturned:
        us = UserSubscription.objects.filter(user = user, subscription__name__in = SUBSCRIPTION_NAMES, active = True, cancelled = False)[0]

    if us.expired():
        return None

    return us


def user_has_subscription(user):
    try:
        user_get_subscription(user)
    except UserSubscription.DoesNotExist:
        return False

    return True


def user_has_active_subscription(user):
    try:
        us = user_get_active_subscription(user)
    except UserSubscription.DoesNotExist:
        return False

    if us:
        return us.active and not us.cancelled and not us.expired()

    False

def user_has_inactive_subscription(user):
    active = user_has_active_subscription(user)
    if active:
        return False

    try:
        us = user_get_subscription(user)
    except UserSubscription.DoesNotExist:
        return False

    return not us.active or us.cancelled or us.expired()


def subscription_byte_limit(subscription):
    GB = 1024*1024*1024

    # Used in the unit tests
    if subscription.group.name == 'rawdata-empty':
        return 0
    if subscription.group.name == 'rawdata-test':
        return 5*GB

    if subscription.group.name == 'rawdata-atom':
        return 0.5*GB
    if subscription.group.name == 'rawdata-meteor':
        return 5*GB
    if subscription.group.name == 'rawdata-luna':
        return 100*GB
    if subscription.group.name == 'rawdata-sol':
        return 200*GB
    if subscription.group.name == 'rawdata-galaxia':
        return 500*GB

    return 0


def user_byte_limit(user):
    try:
        us = user_get_active_subscription(user)
    except UserSubscription.DoesNotExist:
        return 0

    return subscription_byte_limit(us.subscription)

def supported_raw_formats():
    return [
        "fit", "fits", "fts",

        "3fr",
        "ari", "arw",
        "bay",
        "crw", "cr2", "cap",
        "dcs", "dcr", "dng", "drf",
        "eip", "erf",
        "fff",
        "iiq",
        "k25", "kdc",
        "mef", "mos", "mrw",
        "nef", "nrw",
        "obm", "orf",
        "pef", "ptx", "pxn",
        "r3d", "raf", "raw", "rwl", "rw2", "rwz",
        "sr2", "srf", "srw",
        "x3f",
    ]


def md5_for_file(f, block_size=2**20):
    import hashlib
    md5 = hashlib.md5()
    f.seek(0)
    while True:
        data = f.read(block_size)
        if not data:
            break
        md5.update(data)
    return md5.hexdigest()

