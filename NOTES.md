AsyncNotifierProvider allows more control than FutureProvider.
We can emit cached data first and then update with fresh data.

FutureProvider cannot handle background updates easily.

Cache-first strategy prevents blank UI and improves UX by showing instant data.