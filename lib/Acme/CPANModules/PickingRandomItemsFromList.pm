package Acme::CPANModules::PickingRandomItemsFromList;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of modules to pick random items from a list',
    description => <<'_',

If you are picking random lines from a file, there's a separate CPANModules list
for it: <pm:Acme::CPANModules::PickingRandomLinesFromFile>.

**1. Picking a single item, with equal probability**

If you only want to pick a single item, with equal probability, you can simply
get a random element from an array using the `$ary[rand @ary]` idiom.

**2. Picking multiple items, with equal probability**

**2a. Picking multiple items, with equal probability, duplicates allowed**

If you want to allow duplicates, you can repeatedly pick random elements from an
array using the `$ary[rand @ary]` idiom.

**2b. Picking multiple items, with equal probability, duplicates not allowed**

If you do not want to allow duplicates, there are several alternatives:

<pm:List::Util> (from version 1.54, 2020-02-02) provides `sample()`. If you use
an older version, you can use `shuffle()` then get as many number of samples as
you need from the first elements of the array using slice
(`@shuffled[0..$num_wanted-1]`) or `head()`.

<pm:List::MoreUtils> also provides `samples()`.

Keywords: sample, sampling.

**3. Picking item(s), with weights**

If you want to assign different weights to different items (so one item might be
picked more likely), you can use one of these modules:

<pm:Array::Sample::WeightedRandom> offers sampling without replacement (not
allowing duplicates) or with replacement (allowing duplicates).

<pm:Random::Skew>.

<pm:Data::Random::Weighted> currently can only pick a single item.

_
    tags => ['task', 'sampling', 'random'],
    entries => [
        {
            module=>'List::Util',
        },
        {
            module=>'List::MoreUtils',
        },
        {
            module=>'Array::Sample::WeightedRandom',
        },
        {
            module=>'Random::Skew',
        },
        {
            module=>'Data::Random::Weighted',
        },
    ],
};

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<Bencher::Scenario::SamplingFromList> for the benchmark, which we will probably
include in the future.

Related lists: L<Acme::CPANModules::Sampling>
