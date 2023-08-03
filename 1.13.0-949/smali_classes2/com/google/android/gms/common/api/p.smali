.class public Lcom/google/android/gms/common/api/p;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/q;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/q;

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/android/gms/common/api/q;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/q;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/q;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/p;->a:Lcom/google/android/gms/common/api/q;

    return-void
.end method
