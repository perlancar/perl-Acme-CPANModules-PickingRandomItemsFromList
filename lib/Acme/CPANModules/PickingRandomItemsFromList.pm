# no code
## no critic: TestingAndDebugging::RequireUseStrict
package Acme::CPANModules::PickingRandomItemsFromList;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'Picking random items from a list',
    description => <<'_',

If you are picking random lines from a file, there's a separate CPANModules list
for it: <pm:Acme::CPANModules::PickingRandomLinesFromFile>.

If you want to allow duplicates, you can repeatedly pick random elements from an
array using the `$ary[rand @ary]` idiom.

If you do not want to allow duplicates:

<pm:List::Util> (from version 1.54, 2020-02-02) provides `sample()`. If you use
an older version, you can use `shuffle()` then get as many number of samples as
you need using slice (`@shuffled[0..$num_wanted-1]`) or `head()`.

<pm:List::MoreUtils> provides `samples()`.

Keywords: sample, sampling.

_
    tags => ['task'],
    entries => [
        {
            module=>'List::Util',
        },
        {
            module=>'List::MoreUtils',
        },
    ],
};

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<Bencher::Scenario::SamplingFromList> for the benchmark, which we will probably
include in the future.
