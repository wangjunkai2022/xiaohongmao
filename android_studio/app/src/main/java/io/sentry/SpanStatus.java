package io.sentry;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.statfs.StatFsHelper;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes4.dex */
public enum SpanStatus implements m1 {
    OK(200, 299),
    CANCELLED(499),
    INTERNAL_ERROR(500),
    UNKNOWN(500),
    UNKNOWN_ERROR(500),
    INVALID_ARGUMENT(StatFsHelper.f11024h),
    DEADLINE_EXCEEDED(TypedValues.Position.TYPE_PERCENT_HEIGHT),
    NOT_FOUND(404),
    ALREADY_EXISTS(409),
    PERMISSION_DENIED(TypedValues.Cycle.TYPE_ALPHA),
    RESOURCE_EXHAUSTED(BaseResponse.RESULT_CODE_OPERATION_TOO_FREQUENT),
    FAILED_PRECONDITION(StatFsHelper.f11024h),
    ABORTED(409),
    OUT_OF_RANGE(StatFsHelper.f11024h),
    UNIMPLEMENTED(501),
    UNAVAILABLE(TypedValues.Position.TYPE_PERCENT_WIDTH),
    DATA_LOSS(500),
    UNAUTHENTICATED(401);
    
    private final int maxHttpStatusCode;
    private final int minHttpStatusCode;

    /* loaded from: classes4.dex */
    public static final class a implements c1<SpanStatus> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public SpanStatus a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            return SpanStatus.valueOf(i1Var.M().toUpperCase(Locale.ROOT));
        }
    }

    SpanStatus(int i4) {
        this.minHttpStatusCode = i4;
        this.maxHttpStatusCode = i4;
    }

    @m8.h
    public static SpanStatus fromHttpStatusCode(int i4) {
        SpanStatus[] values;
        for (SpanStatus spanStatus : values()) {
            if (spanStatus.matches(i4)) {
                return spanStatus;
            }
        }
        return null;
    }

    private boolean matches(int i4) {
        return i4 >= this.minHttpStatusCode && i4 <= this.maxHttpStatusCode;
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.l0(name().toLowerCase(Locale.ROOT));
    }

    @m8.g
    public static SpanStatus fromHttpStatusCode(@m8.h Integer num, @m8.g SpanStatus spanStatus) {
        SpanStatus fromHttpStatusCode = num != null ? fromHttpStatusCode(num.intValue()) : spanStatus;
        return fromHttpStatusCode != null ? fromHttpStatusCode : spanStatus;
    }

    SpanStatus(int i4, int i10) {
        this.minHttpStatusCode = i4;
        this.maxHttpStatusCode = i10;
    }
}
