package com.im.freechat.data.sources.api;

import com.im.freechat.data.openapigen.models.Ping200Response;
import com.im.freechat.data.sources.api.entities.dns.DnsResponse;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import okhttp3.RequestBody;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.PUT;
import retrofit2.http.Url;

/* compiled from: RemoteApi.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001b\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u001b\u0010\u0007\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u001b\u0010\b\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u001b\u0010\t\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\f2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\u0010\u001a\u00020\u0011H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/sources/api/RemoteApi;", "", "getApiDns1", "Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;", "url", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getApiDns2", "getApiDns3", "getApiDns4", "getApiDns5", b.f47841v, "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/Ping200Response;", "uploadFile", "", "fileBody", "Lokhttp3/RequestBody;", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface RemoteApi {

    /* compiled from: RemoteApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getApiDns1$default(RemoteApi remoteApi, String str, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = "https://223.5.5.5/resolve?name=_messager._tls.api.moonscap.com&type=33";
                }
                return remoteApi.getApiDns1(str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiDns1");
        }

        public static /* synthetic */ Object getApiDns2$default(RemoteApi remoteApi, String str, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = "https://doh.pub/dns-query?name=_messager._tls.api.moonscap.com&type=33";
                }
                return remoteApi.getApiDns2(str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiDns2");
        }

        public static /* synthetic */ Object getApiDns3$default(RemoteApi remoteApi, String str, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = "https://1.1.1.1/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json";
                }
                return remoteApi.getApiDns3(str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiDns3");
        }

        public static /* synthetic */ Object getApiDns4$default(RemoteApi remoteApi, String str, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = "https://1.0.0.1/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json";
                }
                return remoteApi.getApiDns4(str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiDns4");
        }

        public static /* synthetic */ Object getApiDns5$default(RemoteApi remoteApi, String str, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    str = "https://cloudflare-dns.com/dns-query?name=_messager._tls.api.moonscap.com&type=SRV&ct=application/dns-json";
                }
                return remoteApi.getApiDns5(str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getApiDns5");
        }
    }

    @h
    @GET
    Object getApiDns1(@g @Url String str, @g Continuation<? super DnsResponse> continuation);

    @h
    @GET
    Object getApiDns2(@g @Url String str, @g Continuation<? super DnsResponse> continuation);

    @h
    @Headers({"Accept: application/dns-json"})
    @GET
    Object getApiDns3(@g @Url String str, @g Continuation<? super DnsResponse> continuation);

    @h
    @Headers({"Accept: application/dns-json"})
    @GET
    Object getApiDns4(@g @Url String str, @g Continuation<? super DnsResponse> continuation);

    @h
    @Headers({"Accept: application/dns-json"})
    @GET
    Object getApiDns5(@g @Url String str, @g Continuation<? super DnsResponse> continuation);

    @h
    @GET
    Object ping(@g @Url String str, @g Continuation<? super Response<Ping200Response>> continuation);

    @h
    @PUT
    Object uploadFile(@g @Url String str, @Body @g RequestBody requestBody, @g Continuation<? super Response<Unit>> continuation);
}
