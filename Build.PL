
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Dist::Zilla::Plugin::Bootstrap::lib' => '0',
    'English' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0.88'
  },
  'configure_requires' => {
    'File::ShareDir::Install' => '0.03',
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'LESPEA\'s Dist::Zilla Configuration',
  'dist_author' => [
    'Adam Lesperance <lespea@gmail.com>'
  ],
  'dist_name' => 'Dist-Zilla-PluginBundle-Author-LESPEA',
  'dist_version' => '1.002000',
  'license' => 'perl',
  'module_name' => 'Dist::Zilla::PluginBundle::Author::LESPEA',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'CPAN::Meta::YAML' => '0',
    'Carp' => '0',
    'Dist::Zilla' => '4.200004',
    'Dist::Zilla::Plugin::ArchiveRelease' => '0',
    'Dist::Zilla::Plugin::Authority' => '0',
    'Dist::Zilla::Plugin::AutoMetaResources' => '0',
    'Dist::Zilla::Plugin::AutoPrereqs' => '0',
    'Dist::Zilla::Plugin::CPANChangesTests' => '0',
    'Dist::Zilla::Plugin::CompileTests' => '0',
    'Dist::Zilla::Plugin::ConfirmRelease' => '0',
    'Dist::Zilla::Plugin::ConsistentVersionTest' => '0',
    'Dist::Zilla::Plugin::CopyFilesFromBuild' => '0',
    'Dist::Zilla::Plugin::CriticTests' => '0',
    'Dist::Zilla::Plugin::DistManifestTests' => '0',
    'Dist::Zilla::Plugin::DualBuilders' => '0',
    'Dist::Zilla::Plugin::EOLTests' => '0',
    'Dist::Zilla::Plugin::ExecDir' => '0',
    'Dist::Zilla::Plugin::ExtraTests' => '0',
    'Dist::Zilla::Plugin::FakeRelease' => '0',
    'Dist::Zilla::Plugin::GatherDir' => '0',
    'Dist::Zilla::Plugin::HasVersionTests' => '0',
    'Dist::Zilla::Plugin::InstallGuide' => '0',
    'Dist::Zilla::Plugin::KwaliteeTests' => '0',
    'Dist::Zilla::Plugin::License' => '0',
    'Dist::Zilla::Plugin::MakeMaker' => '0',
    'Dist::Zilla::Plugin::Manifest' => '0',
    'Dist::Zilla::Plugin::ManifestSkip' => '0',
    'Dist::Zilla::Plugin::MetaConfig' => '0',
    'Dist::Zilla::Plugin::MetaJSON' => '0',
    'Dist::Zilla::Plugin::MetaNoIndex' => '0',
    'Dist::Zilla::Plugin::MetaTests' => '0',
    'Dist::Zilla::Plugin::MetaYAML' => '0',
    'Dist::Zilla::Plugin::MinimumPerl' => '0',
    'Dist::Zilla::Plugin::MinimumVersionTests' => '0',
    'Dist::Zilla::Plugin::ModuleBuild' => '0',
    'Dist::Zilla::Plugin::NextRelease' => '0',
    'Dist::Zilla::Plugin::NoTabsTests' => '0',
    'Dist::Zilla::Plugin::PkgVersion' => '0',
    'Dist::Zilla::Plugin::PodCoverageTests' => '0',
    'Dist::Zilla::Plugin::PodSyntaxTests' => '0',
    'Dist::Zilla::Plugin::PodWeaver' => '0',
    'Dist::Zilla::Plugin::PortabilityTests' => '0',
    'Dist::Zilla::Plugin::PruneCruft' => '0',
    'Dist::Zilla::Plugin::ReadmeAnyFromPod' => '0',
    'Dist::Zilla::Plugin::ReportVersions::Tiny' => '0',
    'Dist::Zilla::Plugin::ShareDir' => '0',
    'Dist::Zilla::Plugin::SpellingCommonMistakesTests' => '0',
    'Dist::Zilla::Plugin::SynopsisTests' => '0',
    'Dist::Zilla::Plugin::TestRelease' => '0',
    'Dist::Zilla::Plugin::UnusedVarsTests' => '0',
    'Dist::Zilla::Plugin::UploadToCPAN' => '0',
    'Dist::Zilla::Role::MintingProfile::ShareDir' => '0',
    'Dist::Zilla::Role::PluginBundle::Easy' => '0',
    'Module::Metadata' => '0',
    'Moose' => '1.24',
    'PPIx::Regexp' => '0',
    'Package::DeprecationManager' => '0.10',
    'Perl::Critic::Bangs' => '0',
    'Perl::Critic::Lax' => '0',
    'Perl::Critic::Pulp' => '0',
    'Perl::Critic::StricterSubs' => '0',
    'Perl::Critic::Swift' => '0',
    'Perl::Critic::Utils::PPIRegexp' => '1.108',
    'Perl::MinimumVersion' => '0',
    'Perl::OSType' => '0',
    'Perl::PrereqScanner' => '0',
    'Pod::Coverage::TrustPod' => '0',
    'Pod::Elemental::Transformer::List' => '0',
    'Pod::Spell' => '0',
    'Pod::Weaver' => '3.101632',
    'Pod::Weaver::Config::Assembler' => '0',
    'Pod::Weaver::Section::Installation' => '0',
    'Pod::Weaver::Section::SeeAlso' => '0',
    'Pod::Weaver::Section::Support' => '0',
    'Pod::Weaver::Section::WarrantyDisclaimer' => '0',
    'String::Format' => '0',
    'Test::CPAN::Meta' => '0',
    'Test::EOL' => '0.8',
    'Test::Perl::Critic' => '0',
    'Test::Pod::Content' => '0',
    'namespace::autoclean' => '0.12',
    'perl' => '5.010',
    'utf8' => '0'
  },
  'script_files' => [],
  'share_dir' => {
    'dist' => 'share',
    'module' => {
      'Dist::Zilla::MintingProfile::Author::LESPEA' => 'share/profiles'
    }
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
