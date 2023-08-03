package io.sentry;

import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import m8.a;

/* loaded from: classes4.dex */
public class SentryOptions {
    static final SentryLevel DEFAULT_DIAGNOSTIC_LEVEL = SentryLevel.DEBUG;
    private boolean attachServerName;
    private boolean attachStacktrace;
    private boolean attachThreads;
    @m8.h
    private a beforeBreadcrumb;
    @m8.h
    private b beforeSend;
    @m8.h
    private c beforeSendTransaction;
    @m8.h
    private String cacheDirPath;
    @m8.g
    io.sentry.clientreport.f clientReportRecorder;
    @m8.g
    private final List<j0> collectors;
    private int connectionTimeoutMillis;
    @m8.g
    private final List<String> contextTags;
    @a.c
    @m8.g
    private k3 dateProvider;
    private boolean debug;
    @m8.g
    private final List<String> defaultTracePropagationTargets;
    @m8.g
    private SentryLevel diagnosticLevel;
    @m8.h
    private String dist;
    @m8.h
    private String distinctId;
    @m8.h
    private String dsn;
    @m8.h
    private String dsnHash;
    private boolean enableAutoSessionTracking;
    private boolean enableDeduplication;
    private boolean enableExternalConfiguration;
    private boolean enableNdk;
    private boolean enableScopeSync;
    private boolean enableShutdownHook;
    private boolean enableUncaughtExceptionHandler;
    private boolean enableUserInteractionBreadcrumbs;
    private boolean enableUserInteractionTracing;
    @m8.g
    private io.sentry.cache.f envelopeDiskCache;
    @m8.g
    private k0 envelopeReader;
    @m8.h
    private String environment;
    @m8.g
    private final List<z> eventProcessors;
    @m8.g
    private t0 executorService;
    private long flushTimeoutMillis;
    @m8.g
    private final List<io.sentry.internal.gestures.a> gestureTargetLocators;
    @m8.h
    private HostnameVerifier hostnameVerifier;
    @m8.h
    private Long idleTimeout;
    @m8.g
    private final Set<Class<? extends Throwable>> ignoredExceptionsForType;
    @m8.g
    private final List<String> inAppExcludes;
    @m8.g
    private final List<String> inAppIncludes;
    @m8.g
    private Instrumenter instrumenter;
    @m8.g
    private final List<z0> integrations;
    @m8.g
    private o0 logger;
    @m8.g
    private io.sentry.util.thread.b mainThreadChecker;
    private long maxAttachmentSize;
    private int maxBreadcrumbs;
    private int maxCacheItems;
    private int maxDepth;
    private int maxQueueSize;
    @m8.g
    private RequestSize maxRequestBodySize;
    private int maxSpans;
    private long maxTraceFileSize;
    @m8.g
    private io.sentry.internal.modules.a modulesLoader;
    @m8.g
    private final List<q0> observers;
    private boolean printUncaughtStackTrace;
    @m8.h
    private Double profilesSampleRate;
    @m8.h
    private d profilesSampler;
    @m8.h
    private String proguardUuid;
    @m8.h
    private e proxy;
    private int readTimeoutMillis;
    @m8.h
    private String release;
    @m8.h
    private Double sampleRate;
    @m8.h
    private io.sentry.protocol.l sdkVersion;
    private boolean sendClientReports;
    private boolean sendDefaultPii;
    @m8.h
    private String sentryClientName;
    @m8.g
    private u0 serializer;
    @m8.h
    private String serverName;
    private long sessionTrackingIntervalMillis;
    private long shutdownTimeoutMillis;
    @m8.h
    private SSLSocketFactory sslSocketFactory;
    @m8.g
    private final Map<String, String> tags;
    private boolean traceOptionsRequests;
    @m8.h
    private List<String> tracePropagationTargets;
    private boolean traceSampling;
    @m8.h
    private Double tracesSampleRate;
    @m8.h
    private f tracesSampler;
    @m8.g
    private final s5 transactionPerformanceCollector;
    @m8.g
    private x0 transactionProfiler;
    @m8.g
    private y0 transportFactory;
    @m8.g
    private io.sentry.transport.r transportGate;

    /* loaded from: classes4.dex */
    public enum RequestSize {
        NONE,
        SMALL,
        MEDIUM,
        ALWAYS
    }

    /* loaded from: classes4.dex */
    public interface a {
        @m8.h
        io.sentry.f a(@m8.g io.sentry.f fVar, @m8.g b0 b0Var);
    }

    /* loaded from: classes4.dex */
    public interface b {
        @m8.h
        h4 a(@m8.g h4 h4Var, @m8.g b0 b0Var);
    }

    /* loaded from: classes4.dex */
    public interface c {
        @m8.h
        io.sentry.protocol.u a(@m8.g io.sentry.protocol.u uVar, @m8.g b0 b0Var);
    }

    /* loaded from: classes4.dex */
    public interface d {
        @m8.h
        Double a(@m8.g q2 q2Var);
    }

    /* loaded from: classes4.dex */
    public interface f {
        @m8.h
        Double a(@m8.g q2 q2Var);
    }

    public SentryOptions() {
        this(false);
    }

    @m8.g
    private io.sentry.protocol.l createSdkVersion() {
        io.sentry.protocol.l lVar = new io.sentry.protocol.l(g.f83224a, "6.13.0");
        lVar.j("6.13.0");
        lVar.d("maven:io.sentry:sentry", "6.13.0");
        return lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public static SentryOptions empty() {
        return new SentryOptions(true);
    }

    @a.c
    public void addCollector(@m8.g j0 j0Var) {
        this.collectors.add(j0Var);
    }

    public void addContextTag(@m8.g String str) {
        this.contextTags.add(str);
    }

    public void addEventProcessor(@m8.g z zVar) {
        this.eventProcessors.add(zVar);
    }

    public void addIgnoredExceptionForType(@m8.g Class<? extends Throwable> cls) {
        this.ignoredExceptionsForType.add(cls);
    }

    public void addInAppExclude(@m8.g String str) {
        this.inAppExcludes.add(str);
    }

    public void addInAppInclude(@m8.g String str) {
        this.inAppIncludes.add(str);
    }

    public void addIntegration(@m8.g z0 z0Var) {
        this.integrations.add(z0Var);
    }

    public void addScopeObserver(@m8.g q0 q0Var) {
        this.observers.add(q0Var);
    }

    @Deprecated
    public void addTracingOrigin(@m8.g String str) {
        if (this.tracePropagationTargets == null) {
            this.tracePropagationTargets = new CopyOnWriteArrayList();
        }
        if (str.isEmpty()) {
            return;
        }
        this.tracePropagationTargets.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsIgnoredExceptionForType(@m8.g Throwable th) {
        return this.ignoredExceptionsForType.contains(th.getClass());
    }

    @m8.h
    public a getBeforeBreadcrumb() {
        return this.beforeBreadcrumb;
    }

    @m8.h
    public b getBeforeSend() {
        return this.beforeSend;
    }

    @m8.h
    public c getBeforeSendTransaction() {
        return this.beforeSendTransaction;
    }

    @m8.h
    public String getCacheDirPath() {
        String str = this.cacheDirPath;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return this.dsnHash != null ? new File(this.cacheDirPath, this.dsnHash).getAbsolutePath() : this.cacheDirPath;
    }

    @a.c
    @m8.g
    public io.sentry.clientreport.f getClientReportRecorder() {
        return this.clientReportRecorder;
    }

    @a.c
    @m8.g
    public List<j0> getCollectors() {
        return this.collectors;
    }

    public int getConnectionTimeoutMillis() {
        return this.connectionTimeoutMillis;
    }

    @m8.g
    public List<String> getContextTags() {
        return this.contextTags;
    }

    @a.c
    @m8.g
    public k3 getDateProvider() {
        return this.dateProvider;
    }

    @m8.g
    public SentryLevel getDiagnosticLevel() {
        return this.diagnosticLevel;
    }

    @m8.h
    public String getDist() {
        return this.dist;
    }

    @a.c
    @m8.h
    public String getDistinctId() {
        return this.distinctId;
    }

    @m8.h
    public String getDsn() {
        return this.dsn;
    }

    @m8.g
    public io.sentry.cache.f getEnvelopeDiskCache() {
        return this.envelopeDiskCache;
    }

    @m8.g
    public k0 getEnvelopeReader() {
        return this.envelopeReader;
    }

    @m8.h
    public String getEnvironment() {
        return this.environment;
    }

    @m8.g
    public List<z> getEventProcessors() {
        return this.eventProcessors;
    }

    @a.c
    @m8.g
    public t0 getExecutorService() {
        return this.executorService;
    }

    public long getFlushTimeoutMillis() {
        return this.flushTimeoutMillis;
    }

    public List<io.sentry.internal.gestures.a> getGestureTargetLocators() {
        return this.gestureTargetLocators;
    }

    @m8.h
    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    @m8.h
    public Long getIdleTimeout() {
        return this.idleTimeout;
    }

    @m8.g
    public Set<Class<? extends Throwable>> getIgnoredExceptionsForType() {
        return this.ignoredExceptionsForType;
    }

    @m8.g
    public List<String> getInAppExcludes() {
        return this.inAppExcludes;
    }

    @m8.g
    public List<String> getInAppIncludes() {
        return this.inAppIncludes;
    }

    @m8.g
    public Instrumenter getInstrumenter() {
        return this.instrumenter;
    }

    @m8.g
    public List<z0> getIntegrations() {
        return this.integrations;
    }

    @m8.g
    public o0 getLogger() {
        return this.logger;
    }

    @m8.g
    public io.sentry.util.thread.b getMainThreadChecker() {
        return this.mainThreadChecker;
    }

    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
    }

    public int getMaxBreadcrumbs() {
        return this.maxBreadcrumbs;
    }

    public int getMaxCacheItems() {
        return this.maxCacheItems;
    }

    public int getMaxDepth() {
        return this.maxDepth;
    }

    public int getMaxQueueSize() {
        return this.maxQueueSize;
    }

    @m8.g
    public RequestSize getMaxRequestBodySize() {
        return this.maxRequestBodySize;
    }

    @a.b
    public int getMaxSpans() {
        return this.maxSpans;
    }

    public long getMaxTraceFileSize() {
        return this.maxTraceFileSize;
    }

    @a.c
    @m8.g
    public io.sentry.internal.modules.a getModulesLoader() {
        return this.modulesLoader;
    }

    @m8.h
    public String getOutboxPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "outbox").getAbsolutePath();
    }

    @m8.h
    public Double getProfilesSampleRate() {
        return this.profilesSampleRate;
    }

    @m8.h
    public d getProfilesSampler() {
        return this.profilesSampler;
    }

    @m8.h
    public String getProfilingTracesDirPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "profiling_traces").getAbsolutePath();
    }

    @m8.h
    public String getProguardUuid() {
        return this.proguardUuid;
    }

    @m8.h
    public e getProxy() {
        return this.proxy;
    }

    public int getReadTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    @m8.h
    public String getRelease() {
        return this.release;
    }

    @m8.h
    public Double getSampleRate() {
        return this.sampleRate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @m8.g
    public List<q0> getScopeObservers() {
        return this.observers;
    }

    @m8.h
    public io.sentry.protocol.l getSdkVersion() {
        return this.sdkVersion;
    }

    @m8.h
    public String getSentryClientName() {
        return this.sentryClientName;
    }

    @m8.g
    public u0 getSerializer() {
        return this.serializer;
    }

    @m8.h
    public String getServerName() {
        return this.serverName;
    }

    public long getSessionTrackingIntervalMillis() {
        return this.sessionTrackingIntervalMillis;
    }

    @a.f
    @Deprecated
    public long getShutdownTimeout() {
        return this.shutdownTimeoutMillis;
    }

    public long getShutdownTimeoutMillis() {
        return this.shutdownTimeoutMillis;
    }

    @m8.h
    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    @m8.g
    public Map<String, String> getTags() {
        return this.tags;
    }

    @m8.g
    public List<String> getTracePropagationTargets() {
        List<String> list = this.tracePropagationTargets;
        return list == null ? this.defaultTracePropagationTargets : list;
    }

    @m8.h
    public Double getTracesSampleRate() {
        return this.tracesSampleRate;
    }

    @m8.h
    public f getTracesSampler() {
        return this.tracesSampler;
    }

    @m8.g
    @Deprecated
    public List<String> getTracingOrigins() {
        return getTracePropagationTargets();
    }

    @a.c
    @m8.g
    public s5 getTransactionPerformanceCollector() {
        return this.transactionPerformanceCollector;
    }

    @m8.g
    public x0 getTransactionProfiler() {
        return this.transactionProfiler;
    }

    @m8.g
    public y0 getTransportFactory() {
        return this.transportFactory;
    }

    @m8.g
    public io.sentry.transport.r getTransportGate() {
        return this.transportGate;
    }

    public boolean isAttachServerName() {
        return this.attachServerName;
    }

    public boolean isAttachStacktrace() {
        return this.attachStacktrace;
    }

    public boolean isAttachThreads() {
        return this.attachThreads;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isEnableAutoSessionTracking() {
        return this.enableAutoSessionTracking;
    }

    public boolean isEnableDeduplication() {
        return this.enableDeduplication;
    }

    public boolean isEnableExternalConfiguration() {
        return this.enableExternalConfiguration;
    }

    public boolean isEnableNdk() {
        return this.enableNdk;
    }

    public boolean isEnableScopeSync() {
        return this.enableScopeSync;
    }

    public boolean isEnableShutdownHook() {
        return this.enableShutdownHook;
    }

    public boolean isEnableUncaughtExceptionHandler() {
        return this.enableUncaughtExceptionHandler;
    }

    public boolean isEnableUserInteractionBreadcrumbs() {
        return this.enableUserInteractionBreadcrumbs;
    }

    public boolean isEnableUserInteractionTracing() {
        return this.enableUserInteractionTracing;
    }

    public boolean isPrintUncaughtStackTrace() {
        return this.printUncaughtStackTrace;
    }

    public boolean isProfilingEnabled() {
        return (getProfilesSampleRate() != null && getProfilesSampleRate().doubleValue() > 0.0d) || getProfilesSampler() != null;
    }

    public boolean isSendClientReports() {
        return this.sendClientReports;
    }

    public boolean isSendDefaultPii() {
        return this.sendDefaultPii;
    }

    public boolean isTraceOptionsRequests() {
        return this.traceOptionsRequests;
    }

    @a.b
    public boolean isTraceSampling() {
        return this.traceSampling;
    }

    public boolean isTracingEnabled() {
        return (getTracesSampleRate() == null && getTracesSampler() == null) ? false : true;
    }

    public void merge(@m8.g a0 a0Var) {
        if (a0Var.k() != null) {
            setDsn(a0Var.k());
        }
        if (a0Var.n() != null) {
            setEnvironment(a0Var.n());
        }
        if (a0Var.x() != null) {
            setRelease(a0Var.x());
        }
        if (a0Var.j() != null) {
            setDist(a0Var.j());
        }
        if (a0Var.z() != null) {
            setServerName(a0Var.z());
        }
        if (a0Var.w() != null) {
            setProxy(a0Var.w());
        }
        if (a0Var.m() != null) {
            setEnableUncaughtExceptionHandler(a0Var.m().booleanValue());
        }
        if (a0Var.t() != null) {
            setPrintUncaughtStackTrace(a0Var.t().booleanValue());
        }
        if (a0Var.C() != null) {
            setTracesSampleRate(a0Var.C());
        }
        if (a0Var.u() != null) {
            setProfilesSampleRate(a0Var.u());
        }
        if (a0Var.i() != null) {
            setDebug(a0Var.i().booleanValue());
        }
        if (a0Var.l() != null) {
            setEnableDeduplication(a0Var.l().booleanValue());
        }
        if (a0Var.y() != null) {
            setSendClientReports(a0Var.y().booleanValue());
        }
        for (Map.Entry entry : new HashMap(a0Var.A()).entrySet()) {
            this.tags.put((String) entry.getKey(), (String) entry.getValue());
        }
        for (String str : new ArrayList(a0Var.r())) {
            addInAppInclude(str);
        }
        for (String str2 : new ArrayList(a0Var.q())) {
            addInAppExclude(str2);
        }
        Iterator it = new HashSet(a0Var.p()).iterator();
        while (it.hasNext()) {
            addIgnoredExceptionForType((Class) it.next());
        }
        if (a0Var.B() != null) {
            setTracePropagationTargets(new ArrayList(a0Var.B()));
        }
        for (String str3 : new ArrayList(a0Var.h())) {
            addContextTag(str3);
        }
        if (a0Var.v() != null) {
            setProguardUuid(a0Var.v());
        }
        if (a0Var.o() != null) {
            setIdleTimeout(a0Var.o());
        }
    }

    public void setAttachServerName(boolean z9) {
        this.attachServerName = z9;
    }

    public void setAttachStacktrace(boolean z9) {
        this.attachStacktrace = z9;
    }

    public void setAttachThreads(boolean z9) {
        this.attachThreads = z9;
    }

    public void setBeforeBreadcrumb(@m8.h a aVar) {
        this.beforeBreadcrumb = aVar;
    }

    public void setBeforeSend(@m8.h b bVar) {
        this.beforeSend = bVar;
    }

    public void setBeforeSendTransaction(@m8.h c cVar) {
        this.beforeSendTransaction = cVar;
    }

    public void setCacheDirPath(@m8.h String str) {
        this.cacheDirPath = str;
    }

    public void setConnectionTimeoutMillis(int i4) {
        this.connectionTimeoutMillis = i4;
    }

    @a.c
    public void setDateProvider(@m8.g k3 k3Var) {
        this.dateProvider = k3Var;
    }

    public void setDebug(boolean z9) {
        this.debug = z9;
    }

    public void setDiagnosticLevel(@m8.h SentryLevel sentryLevel) {
        if (sentryLevel == null) {
            sentryLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        }
        this.diagnosticLevel = sentryLevel;
    }

    public void setDist(@m8.h String str) {
        this.dist = str;
    }

    @a.c
    public void setDistinctId(@m8.h String str) {
        this.distinctId = str;
    }

    public void setDsn(@m8.h String str) {
        this.dsn = str;
        this.dsnHash = io.sentry.util.q.b(str, this.logger);
    }

    public void setEnableAutoSessionTracking(boolean z9) {
        this.enableAutoSessionTracking = z9;
    }

    public void setEnableDeduplication(boolean z9) {
        this.enableDeduplication = z9;
    }

    public void setEnableExternalConfiguration(boolean z9) {
        this.enableExternalConfiguration = z9;
    }

    public void setEnableNdk(boolean z9) {
        this.enableNdk = z9;
    }

    public void setEnableScopeSync(boolean z9) {
        this.enableScopeSync = z9;
    }

    public void setEnableShutdownHook(boolean z9) {
        this.enableShutdownHook = z9;
    }

    public void setEnableUncaughtExceptionHandler(boolean z9) {
        this.enableUncaughtExceptionHandler = z9;
    }

    public void setEnableUserInteractionBreadcrumbs(boolean z9) {
        this.enableUserInteractionBreadcrumbs = z9;
    }

    public void setEnableUserInteractionTracing(boolean z9) {
        this.enableUserInteractionTracing = z9;
    }

    public void setEnvelopeDiskCache(@m8.h io.sentry.cache.f fVar) {
        if (fVar == null) {
            fVar = io.sentry.transport.s.a();
        }
        this.envelopeDiskCache = fVar;
    }

    public void setEnvelopeReader(@m8.h k0 k0Var) {
        if (k0Var == null) {
            k0Var = s1.b();
        }
        this.envelopeReader = k0Var;
    }

    public void setEnvironment(@m8.h String str) {
        this.environment = str;
    }

    @a.c
    @m8.k
    public void setExecutorService(@m8.g t0 t0Var) {
        if (t0Var != null) {
            this.executorService = t0Var;
        }
    }

    public void setFlushTimeoutMillis(long j4) {
        this.flushTimeoutMillis = j4;
    }

    public void setGestureTargetLocators(@m8.g List<io.sentry.internal.gestures.a> list) {
        this.gestureTargetLocators.clear();
        this.gestureTargetLocators.addAll(list);
    }

    public void setHostnameVerifier(@m8.h HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
    }

    public void setIdleTimeout(@m8.h Long l10) {
        this.idleTimeout = l10;
    }

    public void setInstrumenter(@m8.g Instrumenter instrumenter) {
        this.instrumenter = instrumenter;
    }

    public void setLogger(@m8.h o0 o0Var) {
        this.logger = o0Var == null ? u1.e() : new n(this, o0Var);
    }

    public void setMainThreadChecker(@m8.g io.sentry.util.thread.b bVar) {
        this.mainThreadChecker = bVar;
    }

    public void setMaxAttachmentSize(long j4) {
        this.maxAttachmentSize = j4;
    }

    public void setMaxBreadcrumbs(int i4) {
        this.maxBreadcrumbs = i4;
    }

    public void setMaxCacheItems(int i4) {
        this.maxCacheItems = i4;
    }

    public void setMaxDepth(int i4) {
        this.maxDepth = i4;
    }

    public void setMaxQueueSize(int i4) {
        if (i4 > 0) {
            this.maxQueueSize = i4;
        }
    }

    public void setMaxRequestBodySize(@m8.g RequestSize requestSize) {
        this.maxRequestBodySize = requestSize;
    }

    @a.b
    public void setMaxSpans(int i4) {
        this.maxSpans = i4;
    }

    public void setMaxTraceFileSize(long j4) {
        this.maxTraceFileSize = j4;
    }

    @a.c
    public void setModulesLoader(@m8.h io.sentry.internal.modules.a aVar) {
        if (aVar == null) {
            aVar = io.sentry.internal.modules.c.b();
        }
        this.modulesLoader = aVar;
    }

    public void setPrintUncaughtStackTrace(boolean z9) {
        this.printUncaughtStackTrace = z9;
    }

    public void setProfilesSampleRate(@m8.h Double d4) {
        if (io.sentry.util.p.a(d4)) {
            this.profilesSampleRate = d4;
            return;
        }
        throw new IllegalArgumentException("The value " + d4 + " is not valid. Use null to disable or values between 0.0 and 1.0.");
    }

    public void setProfilesSampler(@m8.h d dVar) {
        this.profilesSampler = dVar;
    }

    @Deprecated
    public void setProfilingEnabled(boolean z9) {
        if (getProfilesSampleRate() == null) {
            setProfilesSampleRate(z9 ? Double.valueOf(1.0d) : null);
        }
    }

    public void setProguardUuid(@m8.h String str) {
        this.proguardUuid = str;
    }

    public void setProxy(@m8.h e eVar) {
        this.proxy = eVar;
    }

    public void setReadTimeoutMillis(int i4) {
        this.readTimeoutMillis = i4;
    }

    public void setRelease(@m8.h String str) {
        this.release = str;
    }

    public void setSampleRate(Double d4) {
        if (io.sentry.util.p.c(d4)) {
            this.sampleRate = d4;
            return;
        }
        throw new IllegalArgumentException("The value " + d4 + " is not valid. Use null to disable or values > 0.0 and <= 1.0.");
    }

    @a.c
    public void setSdkVersion(@m8.h io.sentry.protocol.l lVar) {
        this.sdkVersion = lVar;
    }

    public void setSendClientReports(boolean z9) {
        this.sendClientReports = z9;
        if (z9) {
            this.clientReportRecorder = new io.sentry.clientreport.d(this);
        } else {
            this.clientReportRecorder = new io.sentry.clientreport.h();
        }
    }

    public void setSendDefaultPii(boolean z9) {
        this.sendDefaultPii = z9;
    }

    public void setSentryClientName(@m8.h String str) {
        this.sentryClientName = str;
    }

    public void setSerializer(@m8.h u0 u0Var) {
        if (u0Var == null) {
            u0Var = a2.f();
        }
        this.serializer = u0Var;
    }

    public void setServerName(@m8.h String str) {
        this.serverName = str;
    }

    public void setSessionTrackingIntervalMillis(long j4) {
        this.sessionTrackingIntervalMillis = j4;
    }

    @a.f
    @Deprecated
    public void setShutdownTimeout(long j4) {
        this.shutdownTimeoutMillis = j4;
    }

    public void setShutdownTimeoutMillis(long j4) {
        this.shutdownTimeoutMillis = j4;
    }

    public void setSslSocketFactory(@m8.h SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
    }

    public void setTag(@m8.g String str, @m8.g String str2) {
        this.tags.put(str, str2);
    }

    public void setTraceOptionsRequests(boolean z9) {
        this.traceOptionsRequests = z9;
    }

    @a.c
    public void setTracePropagationTargets(@m8.h List<String> list) {
        if (list == null) {
            this.tracePropagationTargets = list;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.tracePropagationTargets = arrayList;
    }

    @Deprecated
    public void setTraceSampling(boolean z9) {
        this.traceSampling = z9;
    }

    public void setTracesSampleRate(@m8.h Double d4) {
        if (io.sentry.util.p.e(d4)) {
            this.tracesSampleRate = d4;
            return;
        }
        throw new IllegalArgumentException("The value " + d4 + " is not valid. Use null to disable or values between 0.0 and 1.0.");
    }

    public void setTracesSampler(@m8.h f fVar) {
        this.tracesSampler = fVar;
    }

    @a.c
    @Deprecated
    public void setTracingOrigins(@m8.h List<String> list) {
        setTracePropagationTargets(list);
    }

    public void setTransactionProfiler(@m8.h x0 x0Var) {
        if (x0Var == null) {
            x0Var = e2.c();
        }
        this.transactionProfiler = x0Var;
    }

    public void setTransportFactory(@m8.h y0 y0Var) {
        if (y0Var == null) {
            y0Var = f2.b();
        }
        this.transportFactory = y0Var;
    }

    public void setTransportGate(@m8.h io.sentry.transport.r rVar) {
        if (rVar == null) {
            rVar = io.sentry.transport.u.b();
        }
        this.transportGate = rVar;
    }

    private SentryOptions(boolean z9) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.eventProcessors = copyOnWriteArrayList;
        this.ignoredExceptionsForType = new CopyOnWriteArraySet();
        CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        this.integrations = copyOnWriteArrayList2;
        this.shutdownTimeoutMillis = com.google.android.exoplayer2.k2.f23783i1;
        this.flushTimeoutMillis = 15000L;
        this.enableNdk = true;
        this.logger = u1.e();
        this.diagnosticLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        this.envelopeReader = new t(new n1(this));
        this.serializer = new n1(this);
        this.maxDepth = 100;
        this.maxCacheItems = 30;
        this.maxQueueSize = 30;
        this.maxBreadcrumbs = 100;
        this.inAppExcludes = new CopyOnWriteArrayList();
        this.inAppIncludes = new CopyOnWriteArrayList();
        this.transportFactory = f2.b();
        this.transportGate = io.sentry.transport.u.b();
        this.attachStacktrace = true;
        this.enableAutoSessionTracking = true;
        this.sessionTrackingIntervalMillis = 30000L;
        this.attachServerName = true;
        this.enableUncaughtExceptionHandler = true;
        this.printUncaughtStackTrace = false;
        this.executorService = z1.f();
        this.connectionTimeoutMillis = 5000;
        this.readTimeoutMillis = 5000;
        this.envelopeDiskCache = io.sentry.transport.s.a();
        this.sendDefaultPii = false;
        this.observers = new ArrayList();
        this.tags = new ConcurrentHashMap();
        this.maxAttachmentSize = 20971520L;
        this.enableDeduplication = true;
        this.maxSpans = 1000;
        this.enableShutdownHook = true;
        this.maxRequestBodySize = RequestSize.NONE;
        this.traceSampling = true;
        this.maxTraceFileSize = CacheDataSink.f27026k;
        this.transactionProfiler = e2.c();
        this.tracePropagationTargets = null;
        this.defaultTracePropagationTargets = Collections.singletonList(".*");
        this.idleTimeout = 3000L;
        this.contextTags = new CopyOnWriteArrayList();
        this.sendClientReports = true;
        this.clientReportRecorder = new io.sentry.clientreport.d(this);
        this.modulesLoader = io.sentry.internal.modules.c.b();
        this.enableUserInteractionTracing = false;
        this.enableUserInteractionBreadcrumbs = true;
        this.instrumenter = Instrumenter.SENTRY;
        this.gestureTargetLocators = new ArrayList();
        this.mainThreadChecker = io.sentry.util.thread.d.e();
        this.traceOptionsRequests = true;
        this.dateProvider = new d3();
        this.collectors = new ArrayList();
        this.transactionPerformanceCollector = d2.c();
        if (z9) {
            return;
        }
        this.executorService = new j4();
        copyOnWriteArrayList2.add(new v5());
        copyOnWriteArrayList2.add(new d5());
        copyOnWriteArrayList.add(new p1(this));
        copyOnWriteArrayList.add(new s(this));
        if (io.sentry.util.n.c()) {
            copyOnWriteArrayList.add(new p4());
        }
        setSentryClientName("sentry.java/6.13.0");
        setSdkVersion(createSdkVersion());
    }

    /* loaded from: classes4.dex */
    public static final class e {
        @m8.h

        /* renamed from: a  reason: collision with root package name */
        private String f81820a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private String f81821b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private String f81822c;
        @m8.h

        /* renamed from: d  reason: collision with root package name */
        private String f81823d;

        public e(@m8.h String str, @m8.h String str2, @m8.h String str3, @m8.h String str4) {
            this.f81820a = str;
            this.f81821b = str2;
            this.f81822c = str3;
            this.f81823d = str4;
        }

        @m8.h
        public String a() {
            return this.f81820a;
        }

        @m8.h
        public String b() {
            return this.f81823d;
        }

        @m8.h
        public String c() {
            return this.f81821b;
        }

        @m8.h
        public String d() {
            return this.f81822c;
        }

        public void e(@m8.h String str) {
            this.f81820a = str;
        }

        public void f(@m8.h String str) {
            this.f81823d = str;
        }

        public void g(@m8.h String str) {
            this.f81821b = str;
        }

        public void h(@m8.h String str) {
            this.f81822c = str;
        }

        public e() {
            this(null, null, null, null);
        }

        public e(@m8.h String str, @m8.h String str2) {
            this(str, str2, null, null);
        }
    }
}
