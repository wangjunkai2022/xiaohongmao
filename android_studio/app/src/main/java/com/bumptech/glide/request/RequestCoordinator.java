package com.bumptech.glide.request;

/* loaded from: classes.dex */
public interface RequestCoordinator {

    /* loaded from: classes.dex */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        

        /* renamed from: a  reason: collision with root package name */
        private final boolean f9510a;

        RequestState(boolean z9) {
            this.f9510a = z9;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            return this.f9510a;
        }
    }

    boolean a();

    boolean b(e eVar);

    boolean c(e eVar);

    void d(e eVar);

    void f(e eVar);

    RequestCoordinator getRoot();

    boolean j(e eVar);
}
