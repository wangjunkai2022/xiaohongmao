.class public final Lcom/google/android/gms/common/internal/h2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/h2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/h2;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/common/internal/h2;->c:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/h2;->d:Z

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/h2;->c:I

    return v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h2;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/h2;->a:Ljava/lang/String;

    return-object v0
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/h2;->d:Z

    return v0
.end method
