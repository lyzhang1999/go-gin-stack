package h8r

import(
  "alpha.dagger.io/dagger"
  "alpha.dagger.io/git"
  "alpha.dagger.io/dagger/op"
)

createRepo: git.#Create & {
  repoName: dagger.#Input
}

