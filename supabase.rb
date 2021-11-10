# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.io"
  version "0.12.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/soedirgo/cli/releases/download/v0.12.4/supabase_0.12.4_darwin_amd64.tar.gz"
      sha256 "f612a42b9c5cccdd03890a5e5dda37dd6d42d165b342c81b1c412ea387a50995"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/soedirgo/cli/releases/download/v0.12.4/supabase_0.12.4_darwin_arm64.tar.gz"
      sha256 "140f877b2dac3a223dc954d89c1d137e76b6719df41c491f0846ad6b26bd9d61"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/soedirgo/cli/releases/download/v0.12.4/supabase_0.12.4_linux_amd64.tar.gz"
      sha256 "085a95127a3aa4dc69285ea94f2ee78297a1e484827782b4ceee6fa2135e2ca6"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/soedirgo/cli/releases/download/v0.12.4/supabase_0.12.4_linux_arm64.tar.gz"
      sha256 "526e8771de60ed1bce435657449f7e28f389c2c579c3995cc1365ce8edca3c49"

      def install
        bin.install "supabase"
        (bash_completion/"supabase").write `#{bin}/supabase completion bash`
        (fish_completion/"supabase.fish").write `#{bin}/supabase completion fish`
        (zsh_completion/"_supabase").write `#{bin}/supabase completion zsh`
      end
    end
  end
end
