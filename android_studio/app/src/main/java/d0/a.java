package d0;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.g;
import com.bumptech.glide.util.c;
import com.bumptech.glide.util.m;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: OkHttpStreamFetcher.java */
/* loaded from: classes.dex */
public class a implements d<InputStream>, Callback {

    /* renamed from: g  reason: collision with root package name */
    private static final String f61854g = "OkHttpFetcher";

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f61855a;

    /* renamed from: b  reason: collision with root package name */
    private final g f61856b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f61857c;

    /* renamed from: d  reason: collision with root package name */
    private ResponseBody f61858d;

    /* renamed from: e  reason: collision with root package name */
    private d.a<? super InputStream> f61859e;

    /* renamed from: f  reason: collision with root package name */
    private volatile Call f61860f;

    public a(Call.Factory factory, g gVar) {
        this.f61855a = factory;
        this.f61856b = gVar;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        try {
            InputStream inputStream = this.f61857c;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException unused) {
        }
        ResponseBody responseBody = this.f61858d;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f61859e = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        Call call = this.f61860f;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        Request.Builder url = new Request.Builder().url(this.f61856b.h());
        for (Map.Entry<String, String> entry : this.f61856b.e().entrySet()) {
            url.addHeader(entry.getKey(), entry.getValue());
        }
        Request build = url.build();
        this.f61859e = aVar;
        this.f61860f = this.f61855a.newCall(build);
        this.f61860f.enqueue(this);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    @Override // okhttp3.Callback
    public void onFailure(@NonNull Call call, @NonNull IOException iOException) {
        if (Log.isLoggable(f61854g, 3)) {
            Log.d(f61854g, "OkHttp failed to obtain result", iOException);
        }
        this.f61859e.c(iOException);
    }

    @Override // okhttp3.Callback
    public void onResponse(@NonNull Call call, @NonNull Response response) {
        this.f61858d = response.body();
        if (response.isSuccessful()) {
            InputStream b10 = c.b(this.f61858d.byteStream(), ((ResponseBody) m.d(this.f61858d)).contentLength());
            this.f61857c = b10;
            this.f61859e.e(b10);
            return;
        }
        this.f61859e.c(new HttpException(response.message(), response.code()));
    }
}
