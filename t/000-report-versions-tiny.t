use strict;
use warnings;
use Test::More 0.88;
# This is a relatively nice way to avoid Test::NoWarnings breaking our
# expectations by adding extra tests, without using no_plan.  It also helps
# avoid any other test module that feels introducing random tests, or even
# test plans, is a nice idea.
our $success = 0;
END { $success && done_testing; }

my $v = "\n";

eval {                     # no excuses!
    # report our Perl details
    my $want = '5.010';
    my $pv = ($^V || $]);
    $v .= "perl: $pv (wanted $want) on $^O from $^X\n\n";
};
defined($@) and diag("$@");

# Now, our module version dependencies:
sub pmver {
    my ($module, $wanted) = @_;
    $wanted = " (want $wanted)";
    my $pmver;
    eval "require $module;";
    if ($@) {
        if ($@ =~ m/Can't locate .* in \@INC/) {
            $pmver = 'module not found.';
        } else {
            diag("${module}: $@");
            $pmver = 'died during require.';
        }
    } else {
        my $version;
        eval { $version = $module->VERSION; };
        if ($@) {
            diag("${module}: $@");
            $pmver = 'died during VERSION check.';
        } elsif (defined $version) {
            $pmver = "$version";
        } else {
            $pmver = '<undef>';
        }
    }

    # So, we should be good, right?
    return sprintf('%-45s => %-10s%-15s%s', $module, $pmver, $wanted, "\n");
}

eval { $v .= pmver('CPAN::Meta::YAML','any version') };
eval { $v .= pmver('Carp','any version') };
eval { $v .= pmver('Class::MOP','1.12') };
eval { $v .= pmver('Dist::Zilla','4.200004') };
eval { $v .= pmver('Dist::Zilla::Plugin::ArchiveRelease','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::Authority','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::AutoMetaResources','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::AutoPrereqs','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::Bootstrap::lib','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::CPANChangesTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::CompileTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ConfirmRelease','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ConsistentVersionTest','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::CopyFilesFromBuild','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::CriticTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::DistManifestTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::DualBuilders','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::EOLTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ExecDir','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ExtraTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::FakeRelease','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::GatherDir','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::HasVersionTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::InstallGuide','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::KwaliteeTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::License','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MakeMaker','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::Manifest','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ManifestSkip','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaConfig','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaJSON','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaNoIndex','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaYAML','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MinimumPerl','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::MinimumVersionTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ModuleBuild','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::NextRelease','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::NoTabsTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PkgVersion','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodCoverageTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodSyntaxTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodWeaver','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PortabilityTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::PruneCruft','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ReadmeAnyFromPod','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ReportVersions::Tiny','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::ShareDir','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::SpellingCommonMistakesTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::SynopsisTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::TestRelease','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::UnusedVarsTests','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::UploadToCPAN','any version') };
eval { $v .= pmver('Dist::Zilla::Role::MintingProfile::ShareDir','any version') };
eval { $v .= pmver('Dist::Zilla::Role::PluginBundle::Easy','any version') };
eval { $v .= pmver('English','any version') };
eval { $v .= pmver('File::Find','any version') };
eval { $v .= pmver('File::ShareDir::Install','0.03') };
eval { $v .= pmver('File::Temp','any version') };
eval { $v .= pmver('Module::Build','0.3601') };
eval { $v .= pmver('Module::Metadata','any version') };
eval { $v .= pmver('Moose','1.24') };
eval { $v .= pmver('PPIx::Regexp','any version') };
eval { $v .= pmver('Package::DeprecationManager','0.10') };
eval { $v .= pmver('Package::Stash','0.26') };
eval { $v .= pmver('Perl::Critic::Bangs','any version') };
eval { $v .= pmver('Perl::Critic::Lax','any version') };
eval { $v .= pmver('Perl::Critic::Pulp','any version') };
eval { $v .= pmver('Perl::Critic::StricterSubs','any version') };
eval { $v .= pmver('Perl::Critic::Swift','any version') };
eval { $v .= pmver('Perl::Critic::Utils::PPIRegexp','1.108') };
eval { $v .= pmver('Perl::MinimumVersion','any version') };
eval { $v .= pmver('Perl::OSType','any version') };
eval { $v .= pmver('Perl::PrereqScanner','any version') };
eval { $v .= pmver('Pod::Coverage::TrustPod','any version') };
eval { $v .= pmver('Pod::Elemental::Transformer::List','any version') };
eval { $v .= pmver('Pod::Spell','any version') };
eval { $v .= pmver('Pod::Weaver','3.101632') };
eval { $v .= pmver('Pod::Weaver::Config::Assembler','any version') };
eval { $v .= pmver('Pod::Weaver::Section::Installation','any version') };
eval { $v .= pmver('Pod::Weaver::Section::SeeAlso','any version') };
eval { $v .= pmver('Pod::Weaver::Section::Support','any version') };
eval { $v .= pmver('Pod::Weaver::Section::WarrantyDisclaimer','any version') };
eval { $v .= pmver('String::Format','any version') };
eval { $v .= pmver('Test::CPAN::Meta','any version') };
eval { $v .= pmver('Test::EOL','0.8') };
eval { $v .= pmver('Test::More','0.88') };
eval { $v .= pmver('Test::Perl::Critic','any version') };
eval { $v .= pmver('Test::Pod::Content','any version') };
eval { $v .= pmver('namespace::autoclean','0.12') };
eval { $v .= pmver('utf8','any version') };



# All done.
$v .= <<'EOT';

Thanks for using my code.  I hope it works for you.
If not, please try and include this output in the bug report.
That will help me reproduce the issue and solve you problem.

EOT

diag($v);
ok(1, "we really didn't test anything, just reporting data");
$success = 1;

# Work around another nasty module on CPAN. :/
no warnings 'once';
$Template::Test::NO_FLUSH = 1;
exit 0;
