package p4;

import android.net.Uri;
import android.support.v4.media.MediaMetadataCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.google.android.exoplayer2.ui.PlayerView;
import com.google.android.exoplayer2.v1;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import m8.h;

/* compiled from: Playback.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\u0006\u001a\u00020\u0004H&J\b\u0010\u0007\u001a\u00020\u0004H&J\b\u0010\b\u001a\u00020\u0004H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH&J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\fH&J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0016\u0010\u001a\u001a\u00020\u00042\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H&J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH&J\b\u0010\u001e\u001a\u00020\u0004H'J\b\u0010\u001f\u001a\u00020\u0004H'R\u0014\u0010\"\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b%\u0010!R9\u0010/\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020\u0004\u0018\u00010'8&@&X¦\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00060"}, d2 = {"Lp4/a;", "", "Lcom/google/android/exoplayer2/v1;", "H", "", "L", "I", "d", "pause", "", "reset", y.b.f83920h, "", "position", "seekTo", "", "windowIndex", y.b.f83919g, "Lcom/google/android/exoplayer2/ui/PlayerView;", "playerView", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "K", "", "Landroid/support/v4/media/MediaMetadataCompat;", "list", "M", "Landroid/net/Uri;", "uri", "F", "onStart", "onStop", "getDuration", "()J", "duration", "isPlaying", "()Z", "getCurrentPosition", "currentPosition", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "playbackState", "N", "()Lkotlin/jvm/functions/Function1;", "J", "(Lkotlin/jvm/functions/Function1;)V", "onStateChangeListener", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface a {
    void F(@m8.g Uri uri);

    @h
    v1 H();

    void I();

    void J(@h Function1<? super Integer, Unit> function1);

    void K(@m8.g PlayerView playerView, @m8.g Lifecycle lifecycle);

    void L();

    void M(@m8.g List<MediaMetadataCompat> list);

    @h
    Function1<Integer, Unit> N();

    void d();

    long getCurrentPosition();

    long getDuration();

    boolean isPlaying();

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    void onStart();

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    void onStop();

    void pause();

    void seekTo(long j4);

    void x(int i4, long j4);

    void y(boolean z9);
}
