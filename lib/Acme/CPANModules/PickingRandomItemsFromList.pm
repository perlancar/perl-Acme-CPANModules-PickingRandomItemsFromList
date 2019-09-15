package Acme::CPANModules::PickingRandomItemsFromList;

# DATE
# VERSION

our $LIST = {
    summary => 'Picking random items from a list',
    description => <<'_',

If you are picking random lines from a file, there's a separate CPANModules list
for it: <pm:Acme::CPANModules::PickingRandomLinesFromFile>. If your "list" is a
Perl array, there's `shuffle` from <pm:List::Util> and `samples` from
<pm:List::MoreUtils> (if you don't want duplicates) or you can just select
random elements using `rand()` if you don't mind duplicates.

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
