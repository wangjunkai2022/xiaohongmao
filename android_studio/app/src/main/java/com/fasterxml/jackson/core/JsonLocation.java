package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.ContentReference;
import java.io.Serializable;

/* loaded from: classes.dex */
public class JsonLocation implements Serializable {
    @Deprecated
    public static final int MAX_CONTENT_SNIPPET = 500;
    public static final JsonLocation NA = new JsonLocation(ContentReference.unknown(), -1L, -1L, -1, -1);

    /* renamed from: g  reason: collision with root package name */
    private static final long f13703g = 2;

    /* renamed from: a  reason: collision with root package name */
    protected final long f13704a;

    /* renamed from: b  reason: collision with root package name */
    protected final long f13705b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f13706c;

    /* renamed from: d  reason: collision with root package name */
    protected final int f13707d;

    /* renamed from: e  reason: collision with root package name */
    protected final ContentReference f13708e;

    /* renamed from: f  reason: collision with root package name */
    protected transient String f13709f;

    public JsonLocation(ContentReference contentReference, long j4, int i4, int i10) {
        this(contentReference, -1L, j4, i4, i10);
    }

    protected static ContentReference a(Object obj) {
        if (obj instanceof ContentReference) {
            return (ContentReference) obj;
        }
        return ContentReference.construct(false, obj);
    }

    public StringBuilder appendOffsetDescription(StringBuilder sb) {
        if (this.f13708e.hasTextualContent()) {
            sb.append("line: ");
            int i4 = this.f13706c;
            if (i4 >= 0) {
                sb.append(i4);
            } else {
                sb.append("UNKNOWN");
            }
            sb.append(", column: ");
            int i10 = this.f13707d;
            if (i10 >= 0) {
                sb.append(i10);
            } else {
                sb.append("UNKNOWN");
            }
        } else if (this.f13706c > 0) {
            sb.append("line: ");
            sb.append(this.f13706c);
            if (this.f13707d > 0) {
                sb.append(", column: ");
                sb.append(this.f13707d);
            }
        } else {
            sb.append("byte offset: #");
            long j4 = this.f13704a;
            if (j4 >= 0) {
                sb.append(j4);
            } else {
                sb.append("UNKNOWN");
            }
        }
        return sb;
    }

    public ContentReference contentReference() {
        return this.f13708e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof JsonLocation)) {
            JsonLocation jsonLocation = (JsonLocation) obj;
            ContentReference contentReference = this.f13708e;
            if (contentReference == null) {
                if (jsonLocation.f13708e != null) {
                    return false;
                }
            } else if (!contentReference.equals(jsonLocation.f13708e)) {
                return false;
            }
            return this.f13706c == jsonLocation.f13706c && this.f13707d == jsonLocation.f13707d && this.f13705b == jsonLocation.f13705b && this.f13704a == jsonLocation.f13704a;
        }
        return false;
    }

    public long getByteOffset() {
        return this.f13704a;
    }

    public long getCharOffset() {
        return this.f13705b;
    }

    public int getColumnNr() {
        return this.f13707d;
    }

    public int getLineNr() {
        return this.f13706c;
    }

    @Deprecated
    public Object getSourceRef() {
        return this.f13708e.getRawContent();
    }

    public int hashCode() {
        return ((((this.f13708e == null ? 1 : 2) ^ this.f13706c) + this.f13707d) ^ ((int) this.f13705b)) + ((int) this.f13704a);
    }

    public String offsetDescription() {
        return appendOffsetDescription(new StringBuilder(40)).toString();
    }

    public String sourceDescription() {
        if (this.f13709f == null) {
            this.f13709f = this.f13708e.buildSourceDescription();
        }
        return this.f13709f;
    }

    public String toString() {
        String sourceDescription = sourceDescription();
        StringBuilder sb = new StringBuilder(sourceDescription.length() + 40);
        sb.append("[Source: ");
        sb.append(sourceDescription);
        sb.append("; ");
        StringBuilder appendOffsetDescription = appendOffsetDescription(sb);
        appendOffsetDescription.append(']');
        return appendOffsetDescription.toString();
    }

    public JsonLocation(ContentReference contentReference, long j4, long j10, int i4, int i10) {
        this.f13708e = contentReference == null ? ContentReference.unknown() : contentReference;
        this.f13704a = j4;
        this.f13705b = j10;
        this.f13706c = i4;
        this.f13707d = i10;
    }

    @Deprecated
    public JsonLocation(Object obj, long j4, int i4, int i10) {
        this(a(obj), j4, i4, i10);
    }

    @Deprecated
    public JsonLocation(Object obj, long j4, long j10, int i4, int i10) {
        this(a(obj), j4, j10, i4, i10);
    }
}
