package com.facebook.common.callercontext;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.internal.i;
import com.facebook.common.internal.j;
import java.util.HashMap;
import java.util.Map;
import r7.h;

/* loaded from: classes.dex */
public class ContextChain implements Parcelable {
    public static final Parcelable.Creator<ContextChain> CREATOR = new a();
    private static final char PARENT_SEPARATOR = '/';
    public static final String TAG_INFRA = "i";
    public static final String TAG_PRODUCT = "p";
    public static final String TAG_PRODUCT_AND_INFRA = "pi";
    private static boolean sUseDeepEquals = false;
    @h
    private Map<String, Object> mExtraData;
    private final int mLevel;
    private final String mName;
    @h
    private final ContextChain mParent;
    @h
    private String mSerializedString;
    private final String mTag;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<ContextChain> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ContextChain createFromParcel(Parcel in) {
            return new ContextChain(in);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ContextChain[] newArray(int size) {
            return new ContextChain[size];
        }
    }

    public ContextChain(final String tag, final String name, @h final Map<String, String> extraData, @h final ContextChain parent) {
        this.mTag = tag;
        this.mName = name;
        this.mLevel = parent != null ? parent.mLevel + 1 : 0;
        this.mParent = parent;
        Map<String, Object> extraData2 = parent != null ? parent.getExtraData() : null;
        if (extraData2 != null) {
            this.mExtraData = new HashMap(extraData2);
        }
        if (extraData != null) {
            if (this.mExtraData == null) {
                this.mExtraData = new HashMap();
            }
            this.mExtraData.putAll(extraData);
        }
    }

    public static void setUseDeepEquals(boolean useDeepEquals) {
        sUseDeepEquals = useDeepEquals;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (sUseDeepEquals) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ContextChain contextChain = (ContextChain) obj;
            if (i.a(this.mTag, contextChain.mTag) && i.a(this.mName, contextChain.mName) && this.mLevel == contextChain.mLevel) {
                ContextChain contextChain2 = this.mParent;
                ContextChain contextChain3 = contextChain.mParent;
                if (contextChain2 == contextChain3) {
                    return true;
                }
                if (contextChain2 != null && contextChain2.equals(contextChain3)) {
                    return true;
                }
            }
            return false;
        }
        return super.equals(obj);
    }

    @h
    public Map<String, Object> getExtraData() {
        return this.mExtraData;
    }

    public String getName() {
        return this.mName;
    }

    @h
    public ContextChain getParent() {
        return this.mParent;
    }

    public ContextChain getRootContextChain() {
        ContextChain contextChain = this.mParent;
        return contextChain == null ? this : contextChain.getRootContextChain();
    }

    @h
    public String getStringExtra(String key) {
        Object obj;
        Map<String, Object> map = this.mExtraData;
        if (map == null || (obj = map.get(key)) == null) {
            return null;
        }
        return String.valueOf(obj);
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        if (sUseDeepEquals) {
            int hashCode = super.hashCode() * 31;
            String str = this.mTag;
            int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.mName;
            int hashCode3 = (((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.mLevel) * 31;
            ContextChain contextChain = this.mParent;
            return hashCode3 + (contextChain != null ? contextChain.hashCode() : 0);
        }
        return super.hashCode();
    }

    public void putObjectExtra(String key, Object value) {
        if (this.mExtraData == null) {
            this.mExtraData = new HashMap();
        }
        this.mExtraData.put(key, value);
    }

    public String toString() {
        if (this.mSerializedString == null) {
            this.mSerializedString = this.mTag + ":" + this.mName;
            if (this.mParent != null) {
                this.mSerializedString = this.mParent.toString() + '/' + this.mSerializedString;
            }
        }
        return this.mSerializedString;
    }

    public String[] toStringArray() {
        int i4 = this.mLevel;
        String[] strArr = new String[i4 + 1];
        ContextChain contextChain = this;
        while (i4 >= 0) {
            j.j(contextChain, "ContextChain level mismatch, this should not happen.");
            strArr[i4] = contextChain.mTag + ":" + contextChain.mName;
            contextChain = contextChain.mParent;
            i4 += -1;
        }
        return strArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.mTag);
        dest.writeString(this.mName);
        dest.writeInt(this.mLevel);
        dest.writeParcelable(this.mParent, flags);
    }

    public ContextChain(final String tag, final String name, @h final ContextChain parent) {
        this(tag, name, null, parent);
    }

    protected ContextChain(Parcel in) {
        this.mTag = in.readString();
        this.mName = in.readString();
        this.mLevel = in.readInt();
        this.mParent = (ContextChain) in.readParcelable(ContextChain.class.getClassLoader());
    }
}
