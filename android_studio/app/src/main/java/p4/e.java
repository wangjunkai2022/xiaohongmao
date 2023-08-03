package p4;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.im.freechat.bean.PlaylistItem;
import com.im.freechat.extend.n;
import com.im.freechat.extend.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: PlayerUtil.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\b\u0010\u0003\u001a\u00020\u0002H\u0002J0\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\u000e\u001a\u00020\fJ\u0006\u0010\u000f\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\fJ\u0006\u0010\u0011\u001a\u00020\fJ\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0002R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00168\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u001e\u0010\u001bR\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u00168\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u0019\u001a\u0004\b \u0010\u001b¨\u0006%"}, d2 = {"Lp4/e;", "", "", "d", "", "startPlayId", "", "Lcom/im/freechat/bean/PlaylistItem;", "playItems", "", "startPos", "forcePause", "", "k", "o", "m", "j", "r", "progress", "p", "should", "q", "Landroidx/lifecycle/MutableLiveData;", "Landroid/support/v4/media/MediaMetadataCompat;", "mediaMetadata", "Landroidx/lifecycle/MutableLiveData;", "f", "()Landroidx/lifecycle/MutableLiveData;", "Landroid/support/v4/media/session/PlaybackStateCompat;", "playbackState", "h", "mediaPosition", "g", "Lcom/im/freechat/service/music/b;", "mediaSessionConnection", "<init>", "(Lcom/im/freechat/service/music/b;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.service.music.b f93081a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private PlaybackStateCompat f93082b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final MutableLiveData<MediaMetadataCompat> f93083c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final MutableLiveData<PlaybackStateCompat> f93084d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<Long> f93085e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f93086f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Handler f93087g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final Observer<PlaybackStateCompat> f93088h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final Observer<MediaMetadataCompat> f93089i;

    public e(@m8.g com.im.freechat.service.music.b mediaSessionConnection) {
        Intrinsics.checkNotNullParameter(mediaSessionConnection, "mediaSessionConnection");
        this.f93081a = mediaSessionConnection;
        this.f93082b = com.im.freechat.service.music.c.a();
        this.f93083c = new MutableLiveData<>();
        this.f93084d = new MutableLiveData<>(com.im.freechat.service.music.c.a());
        this.f93085e = new MutableLiveData<>(0L);
        this.f93086f = true;
        this.f93087g = new Handler(Looper.getMainLooper());
        Observer<PlaybackStateCompat> observer = new Observer() { // from class: p4.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                e.n(e.this, (PlaybackStateCompat) obj);
            }
        };
        this.f93088h = observer;
        Observer<MediaMetadataCompat> observer2 = new Observer() { // from class: p4.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                e.i(e.this, (MediaMetadataCompat) obj);
            }
        };
        this.f93089i = observer2;
        mediaSessionConnection.e().observeForever(observer);
        mediaSessionConnection.d().observeForever(observer2);
        d();
    }

    private final boolean d() {
        return this.f93087g.postDelayed(new Runnable() { // from class: p4.d
            @Override // java.lang.Runnable
            public final void run() {
                e.e(e.this);
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(e this$0) {
        long position;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PlaybackStateCompat playbackStateCompat = this$0.f93082b;
        if (playbackStateCompat.getState() == 3) {
            position = ((float) playbackStateCompat.getPosition()) + (((float) (SystemClock.elapsedRealtime() - playbackStateCompat.getLastPositionUpdateTime())) * playbackStateCompat.getPlaybackSpeed());
        } else {
            position = playbackStateCompat.getPosition();
        }
        boolean z9 = this$0.f93082b.getState() == 1;
        Long value = this$0.f93085e.getValue();
        if ((value == null || value.longValue() != position) && !z9) {
            this$0.f93085e.postValue(Long.valueOf(position));
        }
        if (this$0.f93086f) {
            this$0.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(e this$0, MediaMetadataCompat it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        String string = it.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
        if (string == null || string.length() == 0) {
            return;
        }
        this$0.f93083c.postValue(it);
    }

    public static /* synthetic */ void l(e eVar, String str, List list, long j4, boolean z9, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            j4 = 0;
        }
        eVar.k(str, list, j4, (i4 & 8) != 0 ? false : z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(e this$0, PlaybackStateCompat playbackStateCompat) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (playbackStateCompat == null) {
            playbackStateCompat = com.im.freechat.service.music.c.a();
        }
        this$0.f93082b = playbackStateCompat;
        MediaMetadataCompat value = this$0.f93081a.d().getValue();
        if (value == null) {
            value = com.im.freechat.service.music.c.c();
        }
        Intrinsics.checkNotNullExpressionValue(value, "mediaSessionConnection.n….value ?: NOTHING_PLAYING");
        String string = value.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID);
        if (string == null || string.length() == 0) {
            return;
        }
        this$0.f93084d.postValue(this$0.f93082b);
    }

    @m8.g
    public final MutableLiveData<MediaMetadataCompat> f() {
        return this.f93083c;
    }

    @m8.g
    public final MutableLiveData<Long> g() {
        return this.f93085e;
    }

    @m8.g
    public final MutableLiveData<PlaybackStateCompat> h() {
        return this.f93084d;
    }

    public final void j() {
        MediaControllerCompat.e f10;
        PlaybackStateCompat value = this.f93081a.e().getValue();
        if (value != null) {
            if (!(value.getState() == 6 || value.getState() == 3) || (f10 = this.f93081a.f()) == null) {
                return;
            }
            f10.b();
        }
    }

    public final void k(@m8.g String startPlayId, @m8.g List<PlaylistItem> playItems, long j4, boolean z9) {
        List reversed;
        MediaControllerCompat.e f10;
        Intrinsics.checkNotNullParameter(startPlayId, "startPlayId");
        Intrinsics.checkNotNullParameter(playItems, "playItems");
        MediaMetadataCompat value = this.f93081a.d().getValue();
        MediaControllerCompat.e f11 = this.f93081a.f();
        PlaybackStateCompat value2 = this.f93081a.e().getValue();
        boolean z10 = true;
        if (value2 != null ? ArraysKt___ArraysKt.contains(new Integer[]{6, 3, 2}, Integer.valueOf(value2.getState())) : false) {
            if (Intrinsics.areEqual(startPlayId, value != null ? value.getString(MediaMetadataCompat.METADATA_KEY_MEDIA_ID) : null)) {
                PlaybackStateCompat value3 = this.f93081a.e().getValue();
                if (value3 != null) {
                    if ((value3.getState() == 6 || value3.getState() == 3) || z9) {
                        if (f11 != null) {
                            f11.b();
                            return;
                        }
                        return;
                    }
                    if (!n.b(value3.getActions(), 4L) && (!n.b(value3.getActions(), 512L) || value3.getState() != 2)) {
                        z10 = false;
                    }
                    if (z10) {
                        if (f11 != null) {
                            f11.c();
                            return;
                        }
                        return;
                    }
                    Timber.b bVar = Timber.f93860a;
                    bVar.x("Playable item clicked but neither play nor pause are enabled! (messageId=" + startPlayId + ')', new Object[0]);
                    return;
                }
                return;
            }
        }
        Iterator<PlaylistItem> it = playItems.iterator();
        int i4 = 0;
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getId(), startPlayId)) {
                break;
            } else {
                i4++;
            }
        }
        List<PlaylistItem> subList = playItems.subList(0, i4 + 1);
        ArrayList arrayList = new ArrayList();
        for (PlaylistItem playlistItem : subList) {
            MediaMetadataCompat a10 = o.m(o.k(o.i(o.l(o.j(new MediaMetadataCompat.b(), playlistItem.getId()), playlistItem.getSender()), playlistItem.getTime()), playlistItem.getUrl()), playlistItem.isVideo() ? "1" : null).a();
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        reversed = CollectionsKt___CollectionsKt.reversed(arrayList);
        if (f11 != null) {
            f11.d(startPlayId, BundleKt.bundleOf(TuplesKt.to(com.im.freechat.service.music.d.f42263a, reversed)));
        }
        p(j4);
        if (!z9 || (f10 = this.f93081a.f()) == null) {
            return;
        }
        f10.b();
    }

    public final void m() {
        PlaybackStateCompat value = this.f93081a.e().getValue();
        if (value != null) {
            if (value.getState() == 6 || value.getState() == 3) {
                MediaControllerCompat.e f10 = this.f93081a.f();
                if (f10 != null) {
                    f10.b();
                    return;
                }
                return;
            }
            MediaControllerCompat.e f11 = this.f93081a.f();
            if (f11 != null) {
                f11.c();
            }
        }
    }

    public final void o() {
        this.f93081a.e().removeObserver(this.f93088h);
        this.f93081a.d().removeObserver(this.f93089i);
        MediaControllerCompat.e f10 = this.f93081a.f();
        if (f10 != null) {
            f10.x();
        }
        this.f93086f = false;
    }

    public final void p(long j4) {
        MediaControllerCompat.e f10 = this.f93081a.f();
        if (f10 != null) {
            f10.l(j4);
        }
        q(true);
    }

    public final void q(boolean z9) {
        this.f93086f = z9;
        if (z9) {
            d();
        }
    }

    public final void r() {
        MediaControllerCompat.e f10 = this.f93081a.f();
        if (f10 != null) {
            f10.x();
        }
    }
}
