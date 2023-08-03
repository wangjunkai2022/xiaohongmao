package kotlin.reflect.jvm.internal.impl.incremental.components;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: LookupLocation.kt */
/* loaded from: classes4.dex */
public final class Position implements Serializable {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Position NO_POSITION = new Position(-1, -1);
    private final int column;
    private final int line;

    /* compiled from: LookupLocation.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Position getNO_POSITION() {
            return Position.NO_POSITION;
        }
    }

    public Position(int i4, int i10) {
        this.line = i4;
        this.column = i10;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Position) {
            Position position = (Position) obj;
            return this.line == position.line && this.column == position.column;
        }
        return false;
    }

    public int hashCode() {
        return (this.line * 31) + this.column;
    }

    @g
    public String toString() {
        return "Position(line=" + this.line + ", column=" + this.column + ')';
    }
}
