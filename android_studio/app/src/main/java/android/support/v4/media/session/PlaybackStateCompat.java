package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.alipay.sdk.util.i;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;
    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    final long mActions;
    final long mActiveItemId;
    final long mBufferedPosition;
    List<CustomAction> mCustomActions;
    final int mErrorCode;
    final CharSequence mErrorMessage;
    final Bundle mExtras;
    final long mPosition;
    final float mSpeed;
    final int mState;
    private PlaybackState mStateFwk;
    final long mUpdateTime;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PlaybackStateCompat[] newArray(int i4) {
            return new PlaybackStateCompat[i4];
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface d {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface e {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface f {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface g {
    }

    PlaybackStateCompat(int i4, long j4, long j10, float f10, long j11, int i10, CharSequence charSequence, long j12, List<CustomAction> list, long j13, Bundle bundle) {
        this.mState = i4;
        this.mPosition = j4;
        this.mBufferedPosition = j10;
        this.mSpeed = f10;
        this.mActions = j11;
        this.mErrorCode = i10;
        this.mErrorMessage = charSequence;
        this.mUpdateTime = j12;
        this.mCustomActions = new ArrayList(list);
        this.mActiveItemId = j13;
        this.mExtras = bundle;
    }

    public static PlaybackStateCompat fromPlaybackState(Object obj) {
        ArrayList arrayList;
        Bundle bundle = null;
        if (obj != null) {
            PlaybackState playbackState = (PlaybackState) obj;
            List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
            if (customActions != null) {
                ArrayList arrayList2 = new ArrayList(customActions.size());
                for (PlaybackState.CustomAction customAction : customActions) {
                    arrayList2.add(CustomAction.fromCustomAction(customAction));
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                bundle = playbackState.getExtras();
                MediaSessionCompat.c(bundle);
            }
            PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), bundle);
            playbackStateCompat.mStateFwk = playbackState;
            return playbackStateCompat;
        }
        return null;
    }

    public static int toKeyCode(long j4) {
        if (j4 == 4) {
            return 126;
        }
        if (j4 == 2) {
            return 127;
        }
        if (j4 == 32) {
            return 87;
        }
        if (j4 == 16) {
            return 88;
        }
        if (j4 == 1) {
            return 86;
        }
        if (j4 == 64) {
            return 90;
        }
        if (j4 == 8) {
            return 89;
        }
        return j4 == 512 ? 85 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getActions() {
        return this.mActions;
    }

    public long getActiveQueueItemId() {
        return this.mActiveItemId;
    }

    public long getBufferedPosition() {
        return this.mBufferedPosition;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public long getCurrentPosition(Long l10) {
        return Math.max(0L, this.mPosition + (this.mSpeed * ((float) (l10 != null ? l10.longValue() : SystemClock.elapsedRealtime() - this.mUpdateTime))));
    }

    public List<CustomAction> getCustomActions() {
        return this.mCustomActions;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    public long getLastPositionUpdateTime() {
        return this.mUpdateTime;
    }

    public float getPlaybackSpeed() {
        return this.mSpeed;
    }

    public Object getPlaybackState() {
        if (this.mStateFwk == null) {
            PlaybackState.Builder builder = new PlaybackState.Builder();
            builder.setState(this.mState, this.mPosition, this.mSpeed, this.mUpdateTime);
            builder.setBufferedPosition(this.mBufferedPosition);
            builder.setActions(this.mActions);
            builder.setErrorMessage(this.mErrorMessage);
            for (CustomAction customAction : this.mCustomActions) {
                builder.addCustomAction((PlaybackState.CustomAction) customAction.getCustomAction());
            }
            builder.setActiveQueueItemId(this.mActiveItemId);
            if (Build.VERSION.SDK_INT >= 22) {
                builder.setExtras(this.mExtras);
            }
            this.mStateFwk = builder.build();
        }
        return this.mStateFwk;
    }

    public long getPosition() {
        return this.mPosition;
    }

    public int getState() {
        return this.mState;
    }

    public String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", error code=" + this.mErrorCode + ", error message=" + this.mErrorMessage + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + i.f6967d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.mState);
        parcel.writeLong(this.mPosition);
        parcel.writeFloat(this.mSpeed);
        parcel.writeLong(this.mUpdateTime);
        parcel.writeLong(this.mBufferedPosition);
        parcel.writeLong(this.mActions);
        TextUtils.writeToParcel(this.mErrorMessage, parcel, i4);
        parcel.writeTypedList(this.mCustomActions);
        parcel.writeLong(this.mActiveItemId);
        parcel.writeBundle(this.mExtras);
        parcel.writeInt(this.mErrorCode);
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final List<CustomAction> f336a;

        /* renamed from: b  reason: collision with root package name */
        private int f337b;

        /* renamed from: c  reason: collision with root package name */
        private long f338c;

        /* renamed from: d  reason: collision with root package name */
        private long f339d;

        /* renamed from: e  reason: collision with root package name */
        private float f340e;

        /* renamed from: f  reason: collision with root package name */
        private long f341f;

        /* renamed from: g  reason: collision with root package name */
        private int f342g;

        /* renamed from: h  reason: collision with root package name */
        private CharSequence f343h;

        /* renamed from: i  reason: collision with root package name */
        private long f344i;

        /* renamed from: j  reason: collision with root package name */
        private long f345j;

        /* renamed from: k  reason: collision with root package name */
        private Bundle f346k;

        public c() {
            this.f336a = new ArrayList();
            this.f345j = -1L;
        }

        public c a(CustomAction customAction) {
            if (customAction != null) {
                this.f336a.add(customAction);
                return this;
            }
            throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat");
        }

        public c b(String str, String str2, int i4) {
            return a(new CustomAction(str, str2, i4, null));
        }

        public PlaybackStateCompat c() {
            return new PlaybackStateCompat(this.f337b, this.f338c, this.f339d, this.f340e, this.f341f, this.f342g, this.f343h, this.f344i, this.f336a, this.f345j, this.f346k);
        }

        public c d(long j4) {
            this.f341f = j4;
            return this;
        }

        public c e(long j4) {
            this.f345j = j4;
            return this;
        }

        public c f(long j4) {
            this.f339d = j4;
            return this;
        }

        public c g(int i4, CharSequence charSequence) {
            this.f342g = i4;
            this.f343h = charSequence;
            return this;
        }

        @Deprecated
        public c h(CharSequence charSequence) {
            this.f343h = charSequence;
            return this;
        }

        public c i(Bundle bundle) {
            this.f346k = bundle;
            return this;
        }

        public c j(int i4, long j4, float f10) {
            return k(i4, j4, f10, SystemClock.elapsedRealtime());
        }

        public c k(int i4, long j4, float f10, long j10) {
            this.f337b = i4;
            this.f338c = j4;
            this.f344i = j10;
            this.f340e = f10;
            return this;
        }

        public c(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.f336a = arrayList;
            this.f345j = -1L;
            this.f337b = playbackStateCompat.mState;
            this.f338c = playbackStateCompat.mPosition;
            this.f340e = playbackStateCompat.mSpeed;
            this.f344i = playbackStateCompat.mUpdateTime;
            this.f339d = playbackStateCompat.mBufferedPosition;
            this.f341f = playbackStateCompat.mActions;
            this.f342g = playbackStateCompat.mErrorCode;
            this.f343h = playbackStateCompat.mErrorMessage;
            List<CustomAction> list = playbackStateCompat.mCustomActions;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.f345j = playbackStateCompat.mActiveItemId;
            this.f346k = playbackStateCompat.mExtras;
        }
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();
        private final String mAction;
        private PlaybackState.CustomAction mCustomActionFwk;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<CustomAction> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public CustomAction[] newArray(int i4) {
                return new CustomAction[i4];
            }
        }

        /* loaded from: classes.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            private final String f332a;

            /* renamed from: b  reason: collision with root package name */
            private final CharSequence f333b;

            /* renamed from: c  reason: collision with root package name */
            private final int f334c;

            /* renamed from: d  reason: collision with root package name */
            private Bundle f335d;

            public b(String str, CharSequence charSequence, int i4) {
                if (!TextUtils.isEmpty(str)) {
                    if (TextUtils.isEmpty(charSequence)) {
                        throw new IllegalArgumentException("You must specify a name to build a CustomAction");
                    }
                    if (i4 != 0) {
                        this.f332a = str;
                        this.f333b = charSequence;
                        this.f334c = i4;
                        return;
                    }
                    throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction");
                }
                throw new IllegalArgumentException("You must specify an action to build a CustomAction");
            }

            public CustomAction a() {
                return new CustomAction(this.f332a, this.f333b, this.f334c, this.f335d);
            }

            public b b(Bundle bundle) {
                this.f335d = bundle;
                return this;
            }
        }

        CustomAction(String str, CharSequence charSequence, int i4, Bundle bundle) {
            this.mAction = str;
            this.mName = charSequence;
            this.mIcon = i4;
            this.mExtras = bundle;
        }

        public static CustomAction fromCustomAction(Object obj) {
            if (obj != null) {
                PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
                Bundle extras = customAction.getExtras();
                MediaSessionCompat.c(extras);
                CustomAction customAction2 = new CustomAction(customAction.getAction(), customAction.getName(), customAction.getIcon(), extras);
                customAction2.mCustomActionFwk = customAction;
                return customAction2;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAction() {
            return this.mAction;
        }

        public Object getCustomAction() {
            PlaybackState.CustomAction customAction = this.mCustomActionFwk;
            if (customAction == null) {
                PlaybackState.CustomAction.Builder builder = new PlaybackState.CustomAction.Builder(this.mAction, this.mName, this.mIcon);
                builder.setExtras(this.mExtras);
                return builder.build();
            }
            return customAction;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public int getIcon() {
            return this.mIcon;
        }

        public CharSequence getName() {
            return this.mName;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, parcel, i4);
            parcel.writeInt(this.mIcon);
            parcel.writeBundle(this.mExtras);
        }

        CustomAction(Parcel parcel) {
            this.mAction = parcel.readString();
            this.mName = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.mIcon = parcel.readInt();
            this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.mState = parcel.readInt();
        this.mPosition = parcel.readLong();
        this.mSpeed = parcel.readFloat();
        this.mUpdateTime = parcel.readLong();
        this.mBufferedPosition = parcel.readLong();
        this.mActions = parcel.readLong();
        this.mErrorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mCustomActions = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = parcel.readLong();
        this.mExtras = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.mErrorCode = parcel.readInt();
    }
}
