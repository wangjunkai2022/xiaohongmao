package okhttp3.internal.http;

import com.google.common.net.b;
import com.koushikdutta.async.http.AsyncHttpGet;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import m8.g;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;

/* compiled from: RetryAndFollowUpInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "client", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "buildRedirectRequest", "Lokhttp3/Request;", "userResponse", "Lokhttp3/Response;", "method", "", "followUpRequest", "exchange", "Lokhttp3/internal/connection/Exchange;", "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "isRecoverable", "", "e", "Ljava/io/IOException;", "requestSendStarted", "recover", "call", "Lokhttp3/internal/connection/RealCall;", "userRequest", "requestIsOneShot", "retryAfter", "", "defaultDelay", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_FOLLOW_UPS = 20;
    private final OkHttpClient client;

    /* compiled from: RetryAndFollowUpInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", "", "()V", "MAX_FOLLOW_UPS", "", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public RetryAndFollowUpInterceptor(@g OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.client = client;
    }

    private final Request buildRedirectRequest(Response response, String str) {
        String header$default;
        HttpUrl resolve;
        if (!this.client.followRedirects() || (header$default = Response.header$default(response, b.f34636m0, null, 2, null)) == null || (resolve = response.request().url().resolve(header$default)) == null) {
            return null;
        }
        if (Intrinsics.areEqual(resolve.scheme(), response.request().url().scheme()) || this.client.followSslRedirects()) {
            Request.Builder newBuilder = response.request().newBuilder();
            if (HttpMethod.permitsRequestBody(str)) {
                int code = response.code();
                HttpMethod httpMethod = HttpMethod.INSTANCE;
                boolean z9 = httpMethod.redirectsWithBody(str) || code == 308 || code == 307;
                if (httpMethod.redirectsToGet(str) && code != 308 && code != 307) {
                    newBuilder.method(AsyncHttpGet.f44554o, null);
                } else {
                    newBuilder.method(str, z9 ? response.request().body() : null);
                }
                if (!z9) {
                    newBuilder.removeHeader(b.C0);
                    newBuilder.removeHeader(b.f34609b);
                    newBuilder.removeHeader("Content-Type");
                }
            }
            if (!Util.canReuseConnectionFor(response.request().url(), resolve)) {
                newBuilder.removeHeader("Authorization");
            }
            return newBuilder.url(resolve).build();
        }
        return null;
    }

    private final Request followUpRequest(Response response, Exchange exchange) throws IOException {
        RealConnection connection$okhttp;
        Route route = (exchange == null || (connection$okhttp = exchange.getConnection$okhttp()) == null) ? null : connection$okhttp.route();
        int code = response.code();
        String method = response.request().method();
        if (code != 307 && code != 308) {
            if (code != 401) {
                if (code == 421) {
                    RequestBody body = response.request().body();
                    if ((body == null || !body.isOneShot()) && exchange != null && exchange.isCoalescedConnection$okhttp()) {
                        exchange.getConnection$okhttp().noCoalescedConnections$okhttp();
                        return response.request();
                    }
                    return null;
                } else if (code == 503) {
                    Response priorResponse = response.priorResponse();
                    if ((priorResponse == null || priorResponse.code() != 503) && retryAfter(response, Integer.MAX_VALUE) == 0) {
                        return response.request();
                    }
                    return null;
                } else if (code == 407) {
                    Intrinsics.checkNotNull(route);
                    if (route.proxy().type() == Proxy.Type.HTTP) {
                        return this.client.proxyAuthenticator().authenticate(route, response);
                    }
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                } else if (code == 408) {
                    if (this.client.retryOnConnectionFailure()) {
                        RequestBody body2 = response.request().body();
                        if (body2 == null || !body2.isOneShot()) {
                            Response priorResponse2 = response.priorResponse();
                            if ((priorResponse2 == null || priorResponse2.code() != 408) && retryAfter(response, 0) <= 0) {
                                return response.request();
                            }
                            return null;
                        }
                        return null;
                    }
                    return null;
                } else {
                    switch (code) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                }
            } else {
                return this.client.authenticator().authenticate(route, response);
            }
        }
        return buildRedirectRequest(response, method);
    }

    private final boolean isRecoverable(IOException iOException, boolean z9) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z9 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final boolean recover(IOException iOException, RealCall realCall, Request request, boolean z9) {
        if (this.client.retryOnConnectionFailure()) {
            return !(z9 && requestIsOneShot(iOException, request)) && isRecoverable(iOException, z9) && realCall.retryAfterFailure();
        }
        return false;
    }

    private final boolean requestIsOneShot(IOException iOException, Request request) {
        RequestBody body = request.body();
        return (body != null && body.isOneShot()) || (iOException instanceof FileNotFoundException);
    }

    private final int retryAfter(Response response, int i4) {
        String header$default = Response.header$default(response, b.f34648s0, null, 2, null);
        if (header$default != null) {
            if (new Regex("\\d+").matches(header$default)) {
                Integer valueOf = Integer.valueOf(header$default);
                Intrinsics.checkNotNullExpressionValue(valueOf, "Integer.valueOf(header)");
                return valueOf.intValue();
            }
            return Integer.MAX_VALUE;
        }
        return i4;
    }

    @Override // okhttp3.Interceptor
    @g
    public Response intercept(@g Interceptor.Chain chain) throws IOException {
        List emptyList;
        Exchange interceptorScopedExchange$okhttp;
        Request followUpRequest;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request$okhttp = realInterceptorChain.getRequest$okhttp();
        RealCall call$okhttp = realInterceptorChain.getCall$okhttp();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Response response = null;
        boolean z9 = true;
        int i4 = 0;
        while (true) {
            call$okhttp.enterNetworkInterceptorExchange(request$okhttp, z9);
            try {
                if (!call$okhttp.isCanceled()) {
                    try {
                        Response proceed = realInterceptorChain.proceed(request$okhttp);
                        if (response != null) {
                            proceed = proceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
                        }
                        response = proceed;
                        interceptorScopedExchange$okhttp = call$okhttp.getInterceptorScopedExchange$okhttp();
                        followUpRequest = followUpRequest(response, interceptorScopedExchange$okhttp);
                    } catch (IOException e4) {
                        if (recover(e4, call$okhttp, request$okhttp, !(e4 instanceof ConnectionShutdownException))) {
                            emptyList = CollectionsKt___CollectionsKt.plus((Collection<? extends IOException>) ((Collection<? extends Object>) emptyList), e4);
                            call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                            z9 = false;
                        } else {
                            throw Util.withSuppressed(e4, emptyList);
                        }
                    } catch (RouteException e10) {
                        if (recover(e10.getLastConnectException(), call$okhttp, request$okhttp, false)) {
                            emptyList = CollectionsKt___CollectionsKt.plus((Collection<? extends IOException>) ((Collection<? extends Object>) emptyList), e10.getFirstConnectException());
                            call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                            z9 = false;
                        } else {
                            throw Util.withSuppressed(e10.getFirstConnectException(), emptyList);
                        }
                    }
                    if (followUpRequest == null) {
                        if (interceptorScopedExchange$okhttp != null && interceptorScopedExchange$okhttp.isDuplex$okhttp()) {
                            call$okhttp.timeoutEarlyExit();
                        }
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                        return response;
                    }
                    RequestBody body = followUpRequest.body();
                    if (body != null && body.isOneShot()) {
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(false);
                        return response;
                    }
                    ResponseBody body2 = response.body();
                    if (body2 != null) {
                        Util.closeQuietly(body2);
                    }
                    i4++;
                    if (i4 <= 20) {
                        call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                        request$okhttp = followUpRequest;
                        z9 = true;
                    } else {
                        throw new ProtocolException("Too many follow-up requests: " + i4);
                    }
                } else {
                    throw new IOException("Canceled");
                }
            } catch (Throwable th) {
                call$okhttp.exitNetworkInterceptorExchange$okhttp(true);
                throw th;
            }
        }
    }
}
