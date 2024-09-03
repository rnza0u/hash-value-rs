{
    targets: {
        lint: {
            executor: 'std:commands',
            options: {
                commands: [
                    'cargo fmt',
                    'cargo clippy'
                ],
                shell: true
            }
        },
        check: {
            executor: 'std:commands',
            options: {
                commands: [
                    'cargo check'
                ],
                shell: true
            }
        },
        publish: {
            executor: {
                url: 'https://github.com/rnza0u/blaze-executors.git',
                format: 'Git',
                path: 'cargo-publish'
            }
        }
    }
}