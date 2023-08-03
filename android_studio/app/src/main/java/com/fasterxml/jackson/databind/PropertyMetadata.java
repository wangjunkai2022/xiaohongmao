package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.Serializable;

/* loaded from: classes.dex */
public class PropertyMetadata implements Serializable {

    /* renamed from: h  reason: collision with root package name */
    private static final long f14424h = -1;

    /* renamed from: a  reason: collision with root package name */
    protected final Boolean f14425a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f14426b;

    /* renamed from: c  reason: collision with root package name */
    protected final Integer f14427c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f14428d;

    /* renamed from: e  reason: collision with root package name */
    protected final transient a f14429e;

    /* renamed from: f  reason: collision with root package name */
    protected Nulls f14430f;

    /* renamed from: g  reason: collision with root package name */
    protected Nulls f14431g;
    public static final PropertyMetadata STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null, null, null, null, null, null);

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final AnnotatedMember f14432a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f14433b;

        protected a(AnnotatedMember annotatedMember, boolean z9) {
            this.f14432a = annotatedMember;
            this.f14433b = z9;
        }

        public static a a(AnnotatedMember annotatedMember) {
            return new a(annotatedMember, true);
        }

        public static a b(AnnotatedMember annotatedMember) {
            return new a(annotatedMember, false);
        }

        public static a c(AnnotatedMember annotatedMember) {
            return new a(annotatedMember, false);
        }
    }

    protected PropertyMetadata(Boolean bool, String str, Integer num, String str2, a aVar, Nulls nulls, Nulls nulls2) {
        this.f14425a = bool;
        this.f14426b = str;
        this.f14427c = num;
        this.f14428d = (str2 == null || str2.isEmpty()) ? null : null;
        this.f14429e = aVar;
        this.f14430f = nulls;
        this.f14431g = nulls2;
    }

    public static PropertyMetadata construct(Boolean bool, String str, Integer num, String str2) {
        if (str == null && num == null && str2 == null) {
            if (bool == null) {
                return STD_REQUIRED_OR_OPTIONAL;
            }
            return bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
        }
        return new PropertyMetadata(bool, str, num, str2, null, null, null);
    }

    protected Object a() {
        if (this.f14426b == null && this.f14427c == null && this.f14428d == null && this.f14429e == null && this.f14430f == null && this.f14431g == null) {
            Boolean bool = this.f14425a;
            if (bool == null) {
                return STD_REQUIRED_OR_OPTIONAL;
            }
            return bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
        }
        return this;
    }

    public Nulls getContentNulls() {
        return this.f14431g;
    }

    public String getDefaultValue() {
        return this.f14428d;
    }

    public String getDescription() {
        return this.f14426b;
    }

    public Integer getIndex() {
        return this.f14427c;
    }

    public a getMergeInfo() {
        return this.f14429e;
    }

    public Boolean getRequired() {
        return this.f14425a;
    }

    public Nulls getValueNulls() {
        return this.f14430f;
    }

    public boolean hasDefaultValue() {
        return this.f14428d != null;
    }

    public boolean hasIndex() {
        return this.f14427c != null;
    }

    public boolean isRequired() {
        Boolean bool = this.f14425a;
        return bool != null && bool.booleanValue();
    }

    public PropertyMetadata withDefaultValue(String str) {
        if (str != null && !str.isEmpty()) {
            if (str.equals(this.f14428d)) {
                return this;
            }
        } else if (this.f14428d == null) {
            return this;
        } else {
            str = null;
        }
        return new PropertyMetadata(this.f14425a, this.f14426b, this.f14427c, str, this.f14429e, this.f14430f, this.f14431g);
    }

    public PropertyMetadata withDescription(String str) {
        return new PropertyMetadata(this.f14425a, str, this.f14427c, this.f14428d, this.f14429e, this.f14430f, this.f14431g);
    }

    public PropertyMetadata withIndex(Integer num) {
        return new PropertyMetadata(this.f14425a, this.f14426b, num, this.f14428d, this.f14429e, this.f14430f, this.f14431g);
    }

    public PropertyMetadata withMergeInfo(a aVar) {
        return new PropertyMetadata(this.f14425a, this.f14426b, this.f14427c, this.f14428d, aVar, this.f14430f, this.f14431g);
    }

    public PropertyMetadata withNulls(Nulls nulls, Nulls nulls2) {
        return new PropertyMetadata(this.f14425a, this.f14426b, this.f14427c, this.f14428d, this.f14429e, nulls, nulls2);
    }

    public PropertyMetadata withRequired(Boolean bool) {
        if (bool == null) {
            if (this.f14425a == null) {
                return this;
            }
        } else if (bool.equals(this.f14425a)) {
            return this;
        }
        return new PropertyMetadata(bool, this.f14426b, this.f14427c, this.f14428d, this.f14429e, this.f14430f, this.f14431g);
    }

    @Deprecated
    public static PropertyMetadata construct(boolean z9, String str, Integer num, String str2) {
        if (str == null && num == null && str2 == null) {
            return z9 ? STD_REQUIRED : STD_OPTIONAL;
        }
        return new PropertyMetadata(Boolean.valueOf(z9), str, num, str2, null, null, null);
    }
}
