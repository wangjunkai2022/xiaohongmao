package org.minidns.iterative;

import org.minidns.MiniDnsException;

/* loaded from: classes5.dex */
public abstract class IterativeClientException extends MiniDnsException {

    /* renamed from: b  reason: collision with root package name */
    private static final long f92857b = 1;

    /* loaded from: classes5.dex */
    public static class LoopDetected extends IterativeClientException {

        /* renamed from: c  reason: collision with root package name */
        private static final long f92858c = 1;

        public LoopDetected() {
            super("Resolution loop detected");
        }
    }

    /* loaded from: classes5.dex */
    public static class MaxIterativeStepsReached extends IterativeClientException {

        /* renamed from: c  reason: collision with root package name */
        private static final long f92859c = 1;

        public MaxIterativeStepsReached() {
            super("Maxmimum steps reached");
        }
    }

    protected IterativeClientException(String str) {
        super(str);
    }
}
