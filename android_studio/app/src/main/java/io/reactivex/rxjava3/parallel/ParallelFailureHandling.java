package io.reactivex.rxjava3.parallel;

/* loaded from: classes4.dex */
public enum ParallelFailureHandling implements q7.c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // q7.c
    public ParallelFailureHandling apply(Long t12, Throwable t22) {
        return this;
    }
}
