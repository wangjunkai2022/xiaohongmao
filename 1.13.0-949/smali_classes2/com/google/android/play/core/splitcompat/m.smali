.class public final Lcom/google/android/play/core/splitcompat/m;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final b:Ljava/util/zip/ZipEntry;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/m;->b:Ljava/util/zip/ZipEntry;

    iput-object p2, p0, Lcom/google/android/play/core/splitcompat/m;->a:Ljava/lang/String;

    return-void
.end method
