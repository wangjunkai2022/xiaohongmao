.class public final Lorg/koin/android/ext/koin/a;
.super Ljava/lang/Object;
.source "KoinExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n100#2,4:105\n131#3:109\n1#4:110\n*S KotlinDebug\n*F\n+ 1 KoinExt.kt\norg/koin/android/ext/koin/KoinExtKt\n*L\n81#1:105,4\n81#1:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0014\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/koin/core/a;",
        "Lorg/koin/core/logger/Level;",
        "level",
        "d",
        "Landroid/content/Context;",
        "androidContext",
        "a",
        "",
        "koinPropertyFile",
        "b",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Lorg/koin/core/a;Landroid/content/Context;)Lorg/koin/core/a;
    .locals 6
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    const-string v1, "[init] declare Android Context"

    invoke-virtual {v0, v1}, Lw8/b;->f(Ljava/lang/String;)V

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    new-instance v5, Lorg/koin/android/ext/koin/a$a;

    invoke-direct {v5, p1}, Lorg/koin/android/ext/koin/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5, v2, v3}, Lb9/c;->c(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1, v4, v1, v3}, Lorg/koin/core/Koin;->P(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    new-instance v5, Lorg/koin/android/ext/koin/a$b;

    invoke-direct {v5, p1}, Lorg/koin/android/ext/koin/a$b;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5, v2, v3}, Lb9/c;->c(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lx8/a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1, v4, v1, v3}, Lorg/koin/core/Koin;->P(Lorg/koin/core/Koin;Ljava/util/List;ZILjava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final b(Lorg/koin/core/a;Ljava/lang/String;)Lorg/koin/core/a;
    .locals 5
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "koinPropertyFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/koin/core/Koin;->I()Lorg/koin/core/registry/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/registry/c;->h()Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 4
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->E()Lorg/koin/core/registry/a;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/koin/core/registry/b;->d(Lorg/koin/core/registry/a;Ljava/util/Properties;)V

    .line 9
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Android-Properties] loaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " properties from assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw8/b;->f(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 11
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 12
    :try_start_6
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Android-Properties] error for binding properties : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw8/b;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lw8/b;->g(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Android-Properties] no assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file to load"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw8/b;->f(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Android-Properties] error while loading properties from assets/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw8/b;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static synthetic c(Lorg/koin/core/a;Ljava/lang/String;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "koin.properties"

    :cond_0
    invoke-static {p0, p1}, Lorg/koin/android/ext/koin/a;->b(Lorg/koin/core/a;Ljava/lang/String;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lorg/koin/core/a;Lorg/koin/core/logger/Level;)Lorg/koin/core/a;
    .locals 2
    .param p0    # Lorg/koin/core/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lorg/koin/core/logger/Level;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/koin/core/a;->e()Lorg/koin/core/Koin;

    move-result-object v0

    new-instance v1, Lq8/a;

    invoke-direct {v1, p1}, Lq8/a;-><init>(Lorg/koin/core/logger/Level;)V

    invoke-virtual {v0, v1}, Lorg/koin/core/Koin;->R(Lw8/b;)V

    return-object p0
.end method

.method public static synthetic e(Lorg/koin/core/a;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lorg/koin/android/ext/koin/a;->d(Lorg/koin/core/a;Lorg/koin/core/logger/Level;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method
