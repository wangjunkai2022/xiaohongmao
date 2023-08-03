package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final long BT_FOLDER_TYPE_ALBUMS = 2;
    public static final long BT_FOLDER_TYPE_ARTISTS = 3;
    public static final long BT_FOLDER_TYPE_GENRES = 4;
    public static final long BT_FOLDER_TYPE_MIXED = 0;
    public static final long BT_FOLDER_TYPE_PLAYLISTS = 5;
    public static final long BT_FOLDER_TYPE_TITLES = 1;
    public static final long BT_FOLDER_TYPE_YEARS = 6;
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
    public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
    public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
    public static final long STATUS_DOWNLOADED = 2;
    public static final long STATUS_DOWNLOADING = 1;
    public static final long STATUS_NOT_DOWNLOADED = 0;
    private static final String TAG = "MediaDescriptionCompat";
    private final CharSequence mDescription;
    private MediaDescription mDescriptionFwk;
    private final Bundle mExtras;
    private final Bitmap mIcon;
    private final Uri mIconUri;
    private final String mMediaId;
    private final Uri mMediaUri;
    private final CharSequence mSubtitle;
    private final CharSequence mTitle;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.fromMediaDescription(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i4) {
            return new MediaDescriptionCompat[i4];
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f164a;

        /* renamed from: b  reason: collision with root package name */
        private CharSequence f165b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f166c;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f167d;

        /* renamed from: e  reason: collision with root package name */
        private Bitmap f168e;

        /* renamed from: f  reason: collision with root package name */
        private Uri f169f;

        /* renamed from: g  reason: collision with root package name */
        private Bundle f170g;

        /* renamed from: h  reason: collision with root package name */
        private Uri f171h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f164a, this.f165b, this.f166c, this.f167d, this.f168e, this.f169f, this.f170g, this.f171h);
        }

        public b b(@Nullable CharSequence charSequence) {
            this.f167d = charSequence;
            return this;
        }

        public b c(@Nullable Bundle bundle) {
            this.f170g = bundle;
            return this;
        }

        public b d(@Nullable Bitmap bitmap) {
            this.f168e = bitmap;
            return this;
        }

        public b e(@Nullable Uri uri) {
            this.f169f = uri;
            return this;
        }

        public b f(@Nullable String str) {
            this.f164a = str;
            return this;
        }

        public b g(@Nullable Uri uri) {
            this.f171h = uri;
            return this;
        }

        public b h(@Nullable CharSequence charSequence) {
            this.f166c = charSequence;
            return this;
        }

        public b i(@Nullable CharSequence charSequence) {
            this.f165b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.mMediaId = str;
        this.mTitle = charSequence;
        this.mSubtitle = charSequence2;
        this.mDescription = charSequence3;
        this.mIcon = bitmap;
        this.mIconUri = uri;
        this.mExtras = bundle;
        this.mMediaUri = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.support.v4.media.MediaDescriptionCompat fromMediaDescription(java.lang.Object r9) {
        /*
            r0 = 0
            if (r9 == 0) goto L7f
            int r1 = android.os.Build.VERSION.SDK_INT
            android.support.v4.media.MediaDescriptionCompat$b r2 = new android.support.v4.media.MediaDescriptionCompat$b
            r2.<init>()
            android.media.MediaDescription r9 = (android.media.MediaDescription) r9
            java.lang.String r3 = r9.getMediaId()
            r2.f(r3)
            java.lang.CharSequence r3 = r9.getTitle()
            r2.i(r3)
            java.lang.CharSequence r3 = r9.getSubtitle()
            r2.h(r3)
            java.lang.CharSequence r3 = r9.getDescription()
            r2.b(r3)
            android.graphics.Bitmap r3 = r9.getIconBitmap()
            r2.d(r3)
            android.net.Uri r3 = r9.getIconUri()
            r2.e(r3)
            android.os.Bundle r3 = r9.getExtras()
            if (r3 == 0) goto L40
            android.os.Bundle r3 = android.support.v4.media.session.MediaSessionCompat.G(r3)
        L40:
            java.lang.String r4 = "android.support.v4.media.description.MEDIA_URI"
            if (r3 == 0) goto L4b
            android.os.Parcelable r5 = r3.getParcelable(r4)
            android.net.Uri r5 = (android.net.Uri) r5
            goto L4c
        L4b:
            r5 = r0
        L4c:
            if (r5 == 0) goto L64
            java.lang.String r6 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r7 = r3.containsKey(r6)
            if (r7 == 0) goto L5e
            int r7 = r3.size()
            r8 = 2
            if (r7 != r8) goto L5e
            goto L65
        L5e:
            r3.remove(r4)
            r3.remove(r6)
        L64:
            r0 = r3
        L65:
            r2.c(r0)
            if (r5 == 0) goto L6e
            r2.g(r5)
            goto L79
        L6e:
            r0 = 23
            if (r1 < r0) goto L79
            android.net.Uri r0 = r9.getMediaUri()
            r2.g(r0)
        L79:
            android.support.v4.media.MediaDescriptionCompat r0 = r2.a()
            r0.mDescriptionFwk = r9
        L7f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.fromMediaDescription(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public CharSequence getDescription() {
        return this.mDescription;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    @Nullable
    public Bitmap getIconBitmap() {
        return this.mIcon;
    }

    @Nullable
    public Uri getIconUri() {
        return this.mIconUri;
    }

    public Object getMediaDescription() {
        MediaDescription mediaDescription = this.mDescriptionFwk;
        if (mediaDescription == null) {
            int i4 = Build.VERSION.SDK_INT;
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.mMediaId);
            builder.setTitle(this.mTitle);
            builder.setSubtitle(this.mSubtitle);
            builder.setDescription(this.mDescription);
            builder.setIconBitmap(this.mIcon);
            builder.setIconUri(this.mIconUri);
            Bundle bundle = this.mExtras;
            if (i4 < 23 && this.mMediaUri != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                    bundle.putBoolean(DESCRIPTION_KEY_NULL_BUNDLE_FLAG, true);
                }
                bundle.putParcelable(DESCRIPTION_KEY_MEDIA_URI, this.mMediaUri);
            }
            builder.setExtras(bundle);
            if (i4 >= 23) {
                builder.setMediaUri(this.mMediaUri);
            }
            MediaDescription build = builder.build();
            this.mDescriptionFwk = build;
            return build;
        }
        return mediaDescription;
    }

    @Nullable
    public String getMediaId() {
        return this.mMediaId;
    }

    @Nullable
    public Uri getMediaUri() {
        return this.mMediaUri;
    }

    @Nullable
    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    @Nullable
    public CharSequence getTitle() {
        return this.mTitle;
    }

    public String toString() {
        return ((Object) this.mTitle) + ", " + ((Object) this.mSubtitle) + ", " + ((Object) this.mDescription);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        ((MediaDescription) getMediaDescription()).writeToParcel(parcel, i4);
    }

    MediaDescriptionCompat(Parcel parcel) {
        this.mMediaId = parcel.readString();
        this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mSubtitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mDescription = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.mIcon = (Bitmap) parcel.readParcelable(classLoader);
        this.mIconUri = (Uri) parcel.readParcelable(classLoader);
        this.mExtras = parcel.readBundle(classLoader);
        this.mMediaUri = (Uri) parcel.readParcelable(classLoader);
    }
}
