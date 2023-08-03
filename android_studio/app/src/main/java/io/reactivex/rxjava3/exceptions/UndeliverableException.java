package io.reactivex.rxjava3.exceptions;

/* loaded from: classes4.dex */
public final class UndeliverableException extends IllegalStateException {

    /* renamed from: a  reason: collision with root package name */
    private static final long f76171a = 1644750035281290266L;

    public UndeliverableException(Throwable cause) {
        super("The exception could not be delivered to the consumer because it has already canceled/disposed the flow or the exception has nowhere to go to begin with. Further reading: https://github.com/ReactiveX/RxJava/wiki/What's-different-in-2.0#error-handling | " + cause, cause);
    }
}
