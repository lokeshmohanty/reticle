# Justfile for Tanuki Zola Theme

# Default recipe: list available recipes
default:
    @just --list

# Build all example sites into public/
build:
    ./build.sh

# Serve the blog example site (port 1113)
serve-blog port="1113":
    cd examples/blog && zola serve --port {{ port }}

# Serve the documentation example site (port 1111)
serve-docs port="1111":
    cd examples/docs && zola serve --port {{ port }}

# Serve the book example site (port 1112)
serve-book port="1112":
    cd examples/book && zola serve --port {{ port }}

# Serve any example by name (usage: just serve docs | book | blog)
serve mode="blog" port="":
    #!/usr/bin/env bash
    set -e
    MODE="{{ mode }}"
    PORT="{{ port }}"
    if [ -z "$PORT" ]; then
        case "$MODE" in
            docs) PORT="1111" ;;
            book) PORT="1112" ;;
            blog) PORT="1113" ;;
            *) PORT="1111" ;;
        esac
    fi
    echo "Serving $MODE example on http://127.0.0.1:$PORT"
    cd "examples/$MODE" && zola serve --port "$PORT"

# Clean build artifacts
clean:
    rm -rf public
