.class public final synthetic Lcom/google/android/play/core/splitinstall/testing/i;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/testing/r;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/testing/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/f;)Lcom/google/android/play/core/splitinstall/f;
    .locals 9

    iget v2, p0, Lcom/google/android/play/core/splitinstall/testing/i;->a:I

    sget v0, Lcom/google/android/play/core/splitinstall/testing/a;->q:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->h()I

    move-result v0

    const/4 v1, 0x6

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->a()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->j()J

    move-result-wide v5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->f()Ljava/util/List;

    move-result-object v7

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/f;->e()Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-static/range {v0 .. v8}, Lcom/google/android/play/core/splitinstall/f;->b(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/f;

    move-result-object p1

    return-object p1
.end method
