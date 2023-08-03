.class final Lcom/google/android/play/core/internal/n0;
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
    .locals 1

    const-string v0, "zip"

    invoke-static {p1, p2, p3, p4, v0}, Lcom/google/android/play/core/internal/l0;->d(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/internal/j0;

    invoke-direct {v0}, Lcom/google/android/play/core/internal/j0;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/google/android/play/core/internal/l0;->c(Ljava/lang/ClassLoader;Ljava/util/Set;Lcom/google/android/play/core/internal/k0;)V

    return-void
.end method
