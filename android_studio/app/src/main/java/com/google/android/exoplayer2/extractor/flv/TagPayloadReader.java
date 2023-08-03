package com.google.android.exoplayer2.extractor.flv;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.util.h0;

/* loaded from: classes2.dex */
abstract class TagPayloadReader {

    /* renamed from: a  reason: collision with root package name */
    protected final e0 f22184a;

    /* loaded from: classes2.dex */
    public static final class UnsupportedFormatException extends ParserException {
        public UnsupportedFormatException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TagPayloadReader(e0 e0Var) {
        this.f22184a = e0Var;
    }

    public final boolean a(h0 h0Var, long j4) throws ParserException {
        return b(h0Var) && c(h0Var, j4);
    }

    protected abstract boolean b(h0 h0Var) throws ParserException;

    protected abstract boolean c(h0 h0Var, long j4) throws ParserException;

    public abstract void d();
}
