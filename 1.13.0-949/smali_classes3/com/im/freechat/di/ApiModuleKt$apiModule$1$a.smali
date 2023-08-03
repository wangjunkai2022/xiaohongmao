.class final Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ApiModuleKt$apiModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiModule.kt\ncom/im/freechat/di/ApiModuleKt$apiModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n+ 3 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n*L\n1#1,280:1\n127#2,5:281\n127#2,5:286\n563#3:291\n563#3:292\n*S KotlinDebug\n*F\n+ 1 ApiModule.kt\ncom/im/freechat/di/ApiModuleKt$apiModule$1$1\n*L\n39#1:281,5\n40#1:286,5\n44#1:291\n69#1:292\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "Lokhttp3/OkHttpClient;",
        "a",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;

    invoke-direct {v0}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;-><init>()V

    sput-object v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;->a:Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;
    .locals 5
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class p2, Lcom/im/freechat/domain/d;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    check-cast p2, Lcom/im/freechat/domain/d;

    .line 3
    const-class v1, Lcom/im/freechat/domain/q;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/im/freechat/domain/q;

    .line 5
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a$a;

    invoke-direct {v2, p2}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a$a;-><init>(Lcom/im/freechat/domain/d;)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 9
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 11
    invoke-virtual {p2, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a$b;

    invoke-direct {v0, p1}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a$b;-><init>(Lcom/im/freechat/domain/q;)V

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ApiModuleKt$apiModule$1$a;->a(Lorg/koin/core/scope/Scope;Ly8/a;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
