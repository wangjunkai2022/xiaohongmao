package me.jessyan.retrofiturlmanager;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import me.jessyan.retrofiturlmanager.parser.DefaultUrlParser;
import me.jessyan.retrofiturlmanager.parser.UrlParser;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes4.dex */
public class RetrofitUrlManager {
    private static final boolean DEPENDENCY_OKHTTP;
    private static final String DOMAIN_NAME = "Domain-Name";
    public static final String DOMAIN_NAME_HEADER = "Domain-Name: ";
    private static final String GLOBAL_DOMAIN_NAME = "me.jessyan.retrofiturlmanager.globalDomainName";
    public static final String IDENTIFICATION_IGNORE = "#url_ignore";
    public static final String IDENTIFICATION_PATH_SIZE = "#baseurl_path_size=";
    private static final String TAG = "RetrofitUrlManager";
    private HttpUrl baseUrl;
    private boolean debug;
    private boolean isRun;
    private final Map<String, HttpUrl> mDomainNameHub;
    private final Interceptor mInterceptor;
    private final List<onUrlChangeListener> mListeners;
    private UrlParser mUrlParser;
    private int pathSize;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class RetrofitUrlManagerHolder {
        private static final RetrofitUrlManager INSTANCE = new RetrofitUrlManager();

        private RetrofitUrlManagerHolder() {
        }
    }

    static {
        boolean z9;
        try {
            Class.forName("okhttp3.OkHttpClient");
            z9 = true;
        } catch (ClassNotFoundException unused) {
            z9 = false;
        }
        DEPENDENCY_OKHTTP = z9;
    }

    public static final RetrofitUrlManager getInstance() {
        return RetrofitUrlManagerHolder.INSTANCE;
    }

    private Object[] listenersToArray() {
        Object[] array;
        synchronized (this.mListeners) {
            array = this.mListeners.size() > 0 ? this.mListeners.toArray() : null;
        }
        return array;
    }

    private void notifyListener(Request request, String str, Object[] objArr) {
        if (objArr != null) {
            for (Object obj : objArr) {
                ((onUrlChangeListener) obj).onUrlChangeBefore(request.url(), str);
            }
        }
    }

    private String obtainDomainNameFromHeaders(Request request) {
        List<String> headers = request.headers(DOMAIN_NAME);
        if (headers == null || headers.size() == 0) {
            return null;
        }
        if (headers.size() <= 1) {
            return request.header(DOMAIN_NAME);
        }
        throw new IllegalArgumentException("Only one Domain-Name in the headers");
    }

    private Request pruneIdentification(Request.Builder builder, String str) {
        String[] split = str.split(IDENTIFICATION_IGNORE);
        StringBuffer stringBuffer = new StringBuffer();
        for (String str2 : split) {
            stringBuffer.append(str2);
        }
        return builder.url(stringBuffer.toString()).build();
    }

    public void clearAllDomain() {
        this.mDomainNameHub.clear();
    }

    public synchronized int domainSize() {
        return this.mDomainNameHub.size();
    }

    public synchronized HttpUrl fetchDomain(String str) {
        Utils.checkNotNull(str, "domainName cannot be null");
        return this.mDomainNameHub.get(str);
    }

    public HttpUrl getBaseUrl() {
        return this.baseUrl;
    }

    public synchronized HttpUrl getGlobalDomain() {
        return this.mDomainNameHub.get(GLOBAL_DOMAIN_NAME);
    }

    public int getPathSize() {
        return this.pathSize;
    }

    public synchronized boolean haveDomain(String str) {
        return this.mDomainNameHub.containsKey(str);
    }

    public boolean isAdvancedModel() {
        return this.baseUrl != null;
    }

    public boolean isRun() {
        return this.isRun;
    }

    public Request processRequest(Request request) {
        HttpUrl globalDomain;
        if (request == null) {
            return request;
        }
        Request.Builder newBuilder = request.newBuilder();
        String httpUrl = request.url().toString();
        if (httpUrl.contains(IDENTIFICATION_IGNORE)) {
            return pruneIdentification(newBuilder, httpUrl);
        }
        String obtainDomainNameFromHeaders = obtainDomainNameFromHeaders(request);
        Object[] listenersToArray = listenersToArray();
        if (!TextUtils.isEmpty(obtainDomainNameFromHeaders)) {
            notifyListener(request, obtainDomainNameFromHeaders, listenersToArray);
            globalDomain = fetchDomain(obtainDomainNameFromHeaders);
            newBuilder.removeHeader(DOMAIN_NAME);
        } else {
            notifyListener(request, GLOBAL_DOMAIN_NAME, listenersToArray);
            globalDomain = getGlobalDomain();
        }
        if (globalDomain != null) {
            HttpUrl parseUrl = this.mUrlParser.parseUrl(globalDomain, request.url());
            if (this.debug) {
                Log.d(TAG, "The new url is { " + parseUrl.toString() + " }, old url is { " + request.url().toString() + " }");
            }
            if (listenersToArray != null) {
                for (Object obj : listenersToArray) {
                    ((onUrlChangeListener) obj).onUrlChanged(parseUrl, request.url());
                }
            }
            return newBuilder.url(parseUrl).build();
        }
        return newBuilder.build();
    }

    public void putDomain(String str, String str2) {
        Utils.checkNotNull(str, "domainName cannot be null");
        Utils.checkNotNull(str2, "domainUrl cannot be null");
        synchronized (this.mDomainNameHub) {
            this.mDomainNameHub.put(str, Utils.checkUrl(str2));
        }
    }

    public void registerUrlChangeListener(onUrlChangeListener onurlchangelistener) {
        Utils.checkNotNull(onurlchangelistener, "listener cannot be null");
        synchronized (this.mListeners) {
            this.mListeners.add(onurlchangelistener);
        }
    }

    public void removeDomain(String str) {
        Utils.checkNotNull(str, "domainName cannot be null");
        synchronized (this.mDomainNameHub) {
            this.mDomainNameHub.remove(str);
        }
    }

    public void removeGlobalDomain() {
        synchronized (this.mDomainNameHub) {
            this.mDomainNameHub.remove(GLOBAL_DOMAIN_NAME);
        }
    }

    public void setDebug(boolean z9) {
        this.debug = z9;
    }

    public void setGlobalDomain(String str) {
        Utils.checkNotNull(str, "globalDomain cannot be null");
        synchronized (this.mDomainNameHub) {
            this.mDomainNameHub.put(GLOBAL_DOMAIN_NAME, Utils.checkUrl(str));
        }
    }

    public String setPathSizeOfUrl(String str, int i4) {
        Utils.checkNotNull(str, "url cannot be null");
        if (i4 >= 0) {
            return str + IDENTIFICATION_PATH_SIZE + i4;
        }
        throw new IllegalArgumentException("pathSize must be >= 0");
    }

    public void setRun(boolean z9) {
        this.isRun = z9;
    }

    public String setUrlNotChange(String str) {
        Utils.checkNotNull(str, "url cannot be null");
        return str + IDENTIFICATION_IGNORE;
    }

    public void setUrlParser(UrlParser urlParser) {
        Utils.checkNotNull(urlParser, "parser cannot be null");
        this.mUrlParser = urlParser;
    }

    public void startAdvancedModel(String str) {
        Utils.checkNotNull(str, "baseUrl cannot be null");
        startAdvancedModel(Utils.checkUrl(str));
    }

    public void unregisterUrlChangeListener(onUrlChangeListener onurlchangelistener) {
        Utils.checkNotNull(onurlchangelistener, "listener cannot be null");
        synchronized (this.mListeners) {
            this.mListeners.remove(onurlchangelistener);
        }
    }

    public OkHttpClient.Builder with(OkHttpClient.Builder builder) {
        Utils.checkNotNull(builder, "builder cannot be null");
        return builder.addInterceptor(this.mInterceptor);
    }

    private RetrofitUrlManager() {
        this.isRun = true;
        this.debug = false;
        this.mDomainNameHub = new HashMap();
        this.mListeners = new ArrayList();
        if (DEPENDENCY_OKHTTP) {
            DefaultUrlParser defaultUrlParser = new DefaultUrlParser();
            defaultUrlParser.init(this);
            setUrlParser(defaultUrlParser);
            this.mInterceptor = new Interceptor() { // from class: me.jessyan.retrofiturlmanager.RetrofitUrlManager.1
                @Override // okhttp3.Interceptor
                public Response intercept(Interceptor.Chain chain) throws IOException {
                    if (!RetrofitUrlManager.this.isRun()) {
                        return chain.proceed(chain.request());
                    }
                    return chain.proceed(RetrofitUrlManager.this.processRequest(chain.request()));
                }
            };
            return;
        }
        throw new IllegalStateException("Must be dependency Okhttp");
    }

    public synchronized void startAdvancedModel(HttpUrl httpUrl) {
        List<String> pathSegments;
        Utils.checkNotNull(httpUrl, "baseUrl cannot be null");
        this.baseUrl = httpUrl;
        this.pathSize = httpUrl.pathSize();
        if ("".equals(httpUrl.pathSegments().get(pathSegments.size() - 1))) {
            this.pathSize--;
        }
    }
}
