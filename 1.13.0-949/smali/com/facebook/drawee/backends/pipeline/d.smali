.class public Lcom/facebook/drawee/backends/pipeline/d;
.super Ljava/lang/Object;
.source "Fresco.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Lcom/facebook/drawee/backends/pipeline/g; = null

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/drawee/backends/pipeline/d;

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/d;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/drawee/backends/pipeline/g;
    .locals 1

    sget-object v0, Lcom/facebook/drawee/backends/pipeline/d;->b:Lcom/facebook/drawee/backends/pipeline/g;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/core/h;
    .locals 1

    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->c()Lcom/facebook/imagepipeline/core/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/l;->j()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/facebook/imagepipeline/core/l;
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/core/l;->l()Lcom/facebook/imagepipeline/core/l;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/d;->c:Z

    return v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/facebook/drawee/backends/pipeline/d;->g(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/core/i;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePipelineConfig"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->g(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;)V

    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/core/i;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePipelineConfig",
            "draweeConfig"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/drawee/backends/pipeline/d;->h(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;Z)V

    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i;Lcom/facebook/drawee/backends/pipeline/c;Z)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/core/i;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "imagePipelineConfig",
            "draweeConfig",
            "useNativeCode"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco#initialize"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/facebook/drawee/backends/pipeline/d;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/d;->a:Ljava/lang/Class;

    const-string v2, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v2}, Lp0/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sput-boolean v1, Lcom/facebook/drawee/backends/pipeline/d;->c:Z

    .line 6
    :goto_0
    invoke-static {p3}, Lcom/facebook/imagepipeline/core/o;->b(Z)V

    .line 7
    invoke-static {}, Ly1/a;->e()Z

    move-result p3

    if-nez p3, :cond_4

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Fresco.initialize->SoLoader.init"

    .line 9
    invoke-static {p3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    :cond_2
    :try_start_0
    const-class p3, Lcom/facebook/imagepipeline/nativecode/NativeCodeInitializer;

    const-string v0, "init"

    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {p3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 13
    :catch_0
    :try_start_1
    new-instance p3, Ly1/c;

    invoke-direct {p3}, Ly1/c;-><init>()V

    invoke-static {p3}, Ly1/a;->d(Ly1/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 15
    :catch_1
    :try_start_2
    new-instance p3, Ly1/c;

    invoke-direct {p3}, Ly1/c;-><init>()V

    invoke-static {p3}, Ly1/a;->d(Ly1/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 17
    :catch_2
    :try_start_3
    new-instance p3, Ly1/c;

    invoke-direct {p3}, Ly1/c;-><init>()V

    invoke-static {p3}, Ly1/a;->d(Ly1/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 19
    :catch_3
    :try_start_4
    new-instance p3, Ly1/c;

    invoke-direct {p3}, Ly1/c;-><init>()V

    invoke-static {p3}, Ly1/a;->d(Ly1/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 21
    :goto_1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    goto :goto_3

    .line 22
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 24
    :cond_3
    throw p0

    .line 25
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p1, :cond_5

    .line 26
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/l;->v(Landroid/content/Context;)V

    goto :goto_4

    .line 27
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/l;->w(Lcom/facebook/imagepipeline/core/j;)V

    .line 28
    :goto_4
    invoke-static {p0, p2}, Lcom/facebook/drawee/backends/pipeline/d;->i(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 30
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-void
.end method

.method private static i(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/backends/pipeline/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "draweeConfig"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco.initializeDrawee"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/drawee/backends/pipeline/g;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/backends/pipeline/g;-><init>(Landroid/content/Context;Lcom/facebook/drawee/backends/pipeline/c;)V

    sput-object v0, Lcom/facebook/drawee/backends/pipeline/d;->b:Lcom/facebook/drawee/backends/pipeline/g;

    .line 4
    invoke-static {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->k(Lcom/facebook/common/internal/m;)V

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method

.method public static j()Lcom/facebook/drawee/backends/pipeline/f;
    .locals 1

    sget-object v0, Lcom/facebook/drawee/backends/pipeline/d;->b:Lcom/facebook/drawee/backends/pipeline/g;

    invoke-virtual {v0}, Lcom/facebook/drawee/backends/pipeline/g;->a()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    return-object v0
.end method

.method public static k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/d;->b:Lcom/facebook/drawee/backends/pipeline/g;

    .line 2
    invoke-static {}, Lcom/facebook/drawee/view/SimpleDraweeView;->o()V

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/core/l;->A()V

    return-void
.end method
