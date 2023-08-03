package m3;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.d;
import com.google.firebase.encoders.f;
import m3.b;

/* compiled from: EncoderConfig.java */
/* loaded from: classes2.dex */
public interface b<T extends b<T>> {
    @NonNull
    <U> T a(@NonNull Class<U> cls, @NonNull f<? super U> fVar);

    @NonNull
    <U> T b(@NonNull Class<U> cls, @NonNull d<? super U> dVar);
}
