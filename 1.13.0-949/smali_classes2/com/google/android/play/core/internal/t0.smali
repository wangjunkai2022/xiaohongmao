.class final Lcom/google/android/play/core/internal/t0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/internal/z;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 7

    new-instance v4, Lcom/google/android/play/core/internal/i0;

    invoke-direct {v4}, Lcom/google/android/play/core/internal/i0;-><init>()V

    new-instance v6, Lcom/google/android/play/core/internal/s0;

    invoke-direct {v6}, Lcom/google/android/play/core/internal/s0;-><init>()V

    const-string v5, "path"

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/play/core/internal/g0;->e(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLcom/google/android/play/core/internal/f0;Ljava/lang/String;Lcom/google/android/play/core/internal/e0;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/play/core/internal/q0;->c(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    return-void
.end method
