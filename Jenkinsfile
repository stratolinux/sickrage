node {
  git '…' // checks out Dockerfile and some project sources
  def newApp = docker.build "tssgery/sickrage:${env.BUILD_TAG}"
}
