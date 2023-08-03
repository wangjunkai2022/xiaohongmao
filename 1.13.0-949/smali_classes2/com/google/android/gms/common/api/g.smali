.class public Lcom/google/android/gms/common/api/g;
.super Lcom/google/android/gms/common/api/p;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/data/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/google/android/gms/common/data/a<",
        "TT;>;:",
        "Lcom/google/android/gms/common/api/q;",
        ">",
        "Lcom/google/android/gms/common/api/p<",
        "TR;>;",
        "Lcom/google/android/gms/common/data/b<",
        "TT;>;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/p;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/a;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/data/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/q;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->close()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->getCount()I

    move-result v0

    return v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final isClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final release()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->release()V

    return-void
.end method

.method public final x()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/q;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/a;->x()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
