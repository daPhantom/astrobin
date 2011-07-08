/* perl/except.i: Custom Perl exception handling.
 * Warning: This file is generated by /data/home/olly/tmp/xapian-svn-snapshot/tags/1.2.6/xapian/xapian-bindings/perl/generate-perl-exceptions
 * - do not modify directly!
 *
 * Copyright 2007 Lemur Consulting Ltd
 * Copyright 2007 Olly Betts
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
 */
namespace Xapian {

%exceptionclass Error;
%exceptionclass LogicError;
%exceptionclass RuntimeError;
%exceptionclass AssertionError;
%exceptionclass InvalidArgumentError;
%exceptionclass InvalidOperationError;
%exceptionclass UnimplementedError;
%exceptionclass DatabaseError;
%exceptionclass DatabaseCorruptError;
%exceptionclass DatabaseCreateError;
%exceptionclass DatabaseLockError;
%exceptionclass DatabaseModifiedError;
%exceptionclass DatabaseOpeningError;
%exceptionclass DatabaseVersionError;
%exceptionclass DocNotFoundError;
%exceptionclass FeatureUnavailableError;
%exceptionclass InternalError;
%exceptionclass NetworkError;
%exceptionclass NetworkTimeoutError;
%exceptionclass QueryParserError;
%exceptionclass SerialisationError;
%exceptionclass RangeError;
}
%include "xapian/error.h"

%{
namespace Xapian {
void handle_exception() {
    try {
	throw;
    } catch (const Xapian::RangeError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::RangeError", (void *) new Xapian::RangeError(e));
        croak(Nullch);
    } catch (const Xapian::SerialisationError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::SerialisationError", (void *) new Xapian::SerialisationError(e));
        croak(Nullch);
    } catch (const Xapian::QueryParserError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::QueryParserError", (void *) new Xapian::QueryParserError(e));
        croak(Nullch);
    } catch (const Xapian::NetworkTimeoutError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::NetworkTimeoutError", (void *) new Xapian::NetworkTimeoutError(e));
        croak(Nullch);
    } catch (const Xapian::NetworkError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::NetworkError", (void *) new Xapian::NetworkError(e));
        croak(Nullch);
    } catch (const Xapian::InternalError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::InternalError", (void *) new Xapian::InternalError(e));
        croak(Nullch);
    } catch (const Xapian::FeatureUnavailableError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::FeatureUnavailableError", (void *) new Xapian::FeatureUnavailableError(e));
        croak(Nullch);
    } catch (const Xapian::DocNotFoundError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DocNotFoundError", (void *) new Xapian::DocNotFoundError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseVersionError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseVersionError", (void *) new Xapian::DatabaseVersionError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseOpeningError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseOpeningError", (void *) new Xapian::DatabaseOpeningError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseModifiedError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseModifiedError", (void *) new Xapian::DatabaseModifiedError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseLockError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseLockError", (void *) new Xapian::DatabaseLockError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseCreateError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseCreateError", (void *) new Xapian::DatabaseCreateError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseCorruptError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseCorruptError", (void *) new Xapian::DatabaseCorruptError(e));
        croak(Nullch);
    } catch (const Xapian::DatabaseError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::DatabaseError", (void *) new Xapian::DatabaseError(e));
        croak(Nullch);
    } catch (const Xapian::UnimplementedError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::UnimplementedError", (void *) new Xapian::UnimplementedError(e));
        croak(Nullch);
    } catch (const Xapian::InvalidOperationError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::InvalidOperationError", (void *) new Xapian::InvalidOperationError(e));
        croak(Nullch);
    } catch (const Xapian::InvalidArgumentError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::InvalidArgumentError", (void *) new Xapian::InvalidArgumentError(e));
        croak(Nullch);
    } catch (const Xapian::AssertionError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::AssertionError", (void *) new Xapian::AssertionError(e));
        croak(Nullch);
    } catch (const Xapian::RuntimeError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::RuntimeError", (void *) new Xapian::RuntimeError(e));
        croak(Nullch);
    } catch (const Xapian::LogicError &e) {
	SV * errsv = get_sv("@", TRUE);
	sv_setref_pv(errsv, "Search::Xapian::LogicError", (void *) new Xapian::LogicError(e));
        croak(Nullch);
    } catch (const std::exception& e) {
        croak( "std::exception: %s", e.what());
    } catch (...) {
        croak("something terrible happened");
    }
}
};
%}

%exception {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_termfreq_min {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_termfreq_est {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_termfreq_max {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_maxweight {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_weight {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::next {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::skip_to {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::check {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::at_end {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_docid {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::get_description {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::init {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::name {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::PostingSource::serialise {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}
%exception Xapian::Stopper::get_description {
    try {
	$action
    } catch (...) {
	Xapian::handle_exception();
	SWIG_fail;
    }
}