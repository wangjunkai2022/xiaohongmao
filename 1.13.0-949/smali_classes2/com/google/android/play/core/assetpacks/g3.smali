.class final Lcom/google/android/play/core/assetpacks/g3;
.super Lcom/google/android/play/core/assetpacks/q2;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final c:I

.field final d:J

.field final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/q2;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/g3;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/g3;->d:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/g3;->e:Ljava/lang/String;

    return-void
.end method
