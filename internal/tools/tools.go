package tools

// PtrTo returns a pointer to the datatype value passed in.
func PtrTo[T any](v T) *T {
	return &v
}
