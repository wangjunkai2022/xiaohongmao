package a8;

import android.os.Parcel;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NotImplementedError;

/* compiled from: Parceler.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J#\u0010\b\u001a\u00020\u0007*\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"La8/c;", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/os/Parcel;", "parcel", "", "flags", "", "a", "(Ljava/lang/Object;Landroid/os/Parcel;I)V", "b", "(Landroid/os/Parcel;)Ljava/lang/Object;", com.qennnsad.aknkaksd.data.repository.f.f47745b, "", "newArray", "(I)[Ljava/lang/Object;", "parcelize-runtime"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public interface c<T> {

    /* compiled from: Parceler.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @m8.g
        public static <T> T[] a(@m8.g c<T> cVar, int i4) {
            throw new NotImplementedError("Generated by Android Extensions automatically");
        }
    }

    void a(T t9, @m8.g Parcel parcel, int i4);

    T b(@m8.g Parcel parcel);

    @m8.g
    T[] newArray(int i4);
}