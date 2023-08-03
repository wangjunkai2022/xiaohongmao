package io.reactivex.parallel;

/* loaded from: classes4.dex */
public enum ParallelFailureHandling implements n7.c<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    @Override // n7.c
    public ParallelFailureHandling apply(Long l10, Throwable th) {
        return this;
    }
}
