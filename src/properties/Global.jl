numconnections(network::GlobalNetwork) =
	Int(network.N * (network.N - 1) / (isdirected(network) ? 1 : 2))

meanconnectivity(network::GlobalNetwork) = network.N - 1

adjVet(network::GlobalNetwork) =
	[i for i in 0:network.N^2-1 if i % (network.N + 1) != 0]

adjMat(network::GlobalNetwork; sparse::Bool=false) = 
	BitArray([(i != j) for i in 1:network.N, j in 1:network.N ])