use Inline::MakeMaker;

WriteInlineMakefile(
    'NAME'		=> 'Video::OpenQuicktime',
    'VERSION_FROM'	=> 'OpenQuicktime.pm',
    'PREREQ_PM'		=> { Inline::C => 0.01   },

     ($] >= 5.005 ? (
       ABSTRACT_FROM    => 'OpenQuicktime.pm',
       AUTHOR           => 'Allen Day <allenday@ucla.edu>') : ()
     ),

    'PERL_MALLOC_OK'    => 1,
    'CONFIG'            => ['lddlflags'],
    'LIBS'		=> ['-lopenquicktime'], # e.g., '-lm'
    'DEFINE'		=> '', # e.g., '-DHAVE_SOMETHING'
    'INC'		=> '-I/usr/local/include', # e.g., '-I/usr/include/other'

    # Un-comment this if you add C files to link with later:
    'OBJECT'		=> '$(O_FILES)', # link all the C files too

#    'dynamic_lib'       => {'--rpath' => '/usr/local/lib'}
);
