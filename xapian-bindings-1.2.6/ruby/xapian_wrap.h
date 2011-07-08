/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.5
 * 
 * This file is not intended to be easily readable and contains a number of 
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG 
 * interface file instead. 
 * ----------------------------------------------------------------------------- */

#ifndef SWIG_Xapian_WRAP_H_
#define SWIG_Xapian_WRAP_H_

namespace Swig {
  class Director;
}


class SwigDirector_PostingSource : public Xapian::PostingSource, public Swig::Director {

public:
    SwigDirector_PostingSource(VALUE self);
    virtual ~SwigDirector_PostingSource();
    virtual Xapian::doccount get_termfreq_min() const;
    virtual Xapian::doccount get_termfreq_est() const;
    virtual Xapian::doccount get_termfreq_max() const;
    virtual Xapian::weight get_weight() const;
    virtual Xapian::docid get_docid() const;
    virtual void next(Xapian::weight min_wt);
    virtual void skip_to(Xapian::docid did, Xapian::weight min_wt);
    virtual bool check(Xapian::docid did, Xapian::weight min_wt);
    virtual bool at_end() const;
    virtual Xapian::PostingSource *clone() const;
    virtual std::string name() const;
    virtual std::string serialise() const;
    virtual Xapian::PostingSource *unserialise(std::string const &s) const;
    virtual void init(Xapian::Database const &db);
    virtual std::string get_description() const;
};


class SwigDirector_MatchDecider : public Xapian::MatchDecider, public Swig::Director {

public:
    SwigDirector_MatchDecider(VALUE self);
    virtual bool operator ()(Xapian::Document const &doc) const;
    virtual ~SwigDirector_MatchDecider();
};


class SwigDirector_ExpandDecider : public Xapian::ExpandDecider, public Swig::Director {

public:
    SwigDirector_ExpandDecider(VALUE self);
    virtual bool operator ()(std::string const &term) const;
    virtual ~SwigDirector_ExpandDecider();
};


class SwigDirector_MatchSpy : public Xapian::MatchSpy, public Swig::Director {

public:
    SwigDirector_MatchSpy(VALUE self);
    virtual ~SwigDirector_MatchSpy();
    virtual void operator ()(Xapian::Document const &doc, Xapian::weight wt);
    virtual Xapian::MatchSpy *clone() const;
    virtual std::string name() const;
    virtual std::string serialise() const;
    virtual Xapian::MatchSpy *unserialise(std::string const &s, Xapian::Registry const &context) const;
    virtual std::string serialise_results() const;
    virtual void merge_results(std::string const &s);
    virtual std::string get_description() const;
};


class SwigDirector_Stopper : public Xapian::Stopper, public Swig::Director {

public:
    SwigDirector_Stopper(VALUE self);
    virtual bool operator ()(std::string const &term) const;
    virtual ~SwigDirector_Stopper();
    virtual std::string get_description() const;
};


struct SwigDirector_ValueRangeProcessor : public Xapian::ValueRangeProcessor, public Swig::Director {

public:
    SwigDirector_ValueRangeProcessor(VALUE self);
    virtual ~SwigDirector_ValueRangeProcessor();
    virtual Xapian::valueno operator ()(std::string &begin, std::string &end);
};


struct SwigDirector_StemImplementation : public Xapian::StemImplementation, public Swig::Director {

public:
    SwigDirector_StemImplementation(VALUE self);
    virtual ~SwigDirector_StemImplementation();
    virtual std::string operator ()(std::string const &word);
    virtual std::string get_description() const;
};


class SwigDirector_KeyMaker : public Xapian::KeyMaker, public Swig::Director {

public:
    SwigDirector_KeyMaker(VALUE self);
    virtual std::string operator ()(Xapian::Document const &doc) const;
    virtual ~SwigDirector_KeyMaker();
};


class SwigDirector_Compactor : public Xapian::Compactor, public Swig::Director {

public:
    SwigDirector_Compactor(VALUE self);
    virtual ~SwigDirector_Compactor();
    virtual void set_status(std::string const &table, std::string const &status);
    virtual std::string resolve_duplicate_metadata(std::string const &key, size_t num_tags, std::string const tags[]);
};


#endif