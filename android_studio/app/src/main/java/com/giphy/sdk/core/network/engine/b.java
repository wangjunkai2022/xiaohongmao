package com.giphy.sdk.core.network.engine;

import android.net.Uri;
import androidx.exifinterface.media.ExifInterface;
import com.giphy.sdk.core.network.api.GPHApiClient;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: NetworkSession.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b`\u0018\u00002\u00020\u0001Jh\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bH&Jr\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001H&R\u0014\u0010\u0015\u001a\u00020\u00128&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/giphy/sdk/core/network/engine/b;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/net/Uri;", "serverUrl", "", "path", "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;", "method", "Ljava/lang/Class;", "responseClass", "", "queryStrings", "headers", "Lcom/giphy/sdk/core/threading/a;", "c", "requestBody", "a", "Ljava/util/concurrent/ExecutorService;", "d", "()Ljava/util/concurrent/ExecutorService;", "networkRequestExecutor", "Ljava/util/concurrent/Executor;", "b", "()Ljava/util/concurrent/Executor;", "completionExecutor", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public interface b {
    @g
    <T> com.giphy.sdk.core.threading.a<T> a(@g Uri uri, @h String str, @g GPHApiClient.HTTPMethod hTTPMethod, @g Class<T> cls, @h Map<String, String> map, @h Map<String, String> map2, @h Object obj);

    @g
    Executor b();

    @g
    <T> com.giphy.sdk.core.threading.a<T> c(@g Uri uri, @h String str, @g GPHApiClient.HTTPMethod hTTPMethod, @g Class<T> cls, @h Map<String, String> map, @h Map<String, String> map2);

    @g
    ExecutorService d();
}
