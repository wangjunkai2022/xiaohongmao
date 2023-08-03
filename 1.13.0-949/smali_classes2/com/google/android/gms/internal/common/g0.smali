.class public final Lcom/google/android/gms/internal/common/g0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field private final a:Lcom/google/android/gms/internal/common/x;

.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/common/d0;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/common/d0;ZLcom/google/android/gms/internal/common/x;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/g0;->c:Lcom/google/android/gms/internal/common/d0;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/common/g0;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/common/g0;->a:Lcom/google/android/gms/internal/common/x;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/common/g0;)Lcom/google/android/gms/internal/common/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/common/g0;->a:Lcom/google/android/gms/internal/common/x;

    return-object p0
.end method

.method public static c(Lcom/google/android/gms/internal/common/x;)Lcom/google/android/gms/internal/common/g0;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/common/g0;

    new-instance v1, Lcom/google/android/gms/internal/common/d0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/common/d0;-><init>(Lcom/google/android/gms/internal/common/x;)V

    sget-object v3, Lcom/google/android/gms/internal/common/w;->b:Lcom/google/android/gms/internal/common/w;

    const/4 v2, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/common/g0;-><init>(Lcom/google/android/gms/internal/common/d0;ZLcom/google/android/gms/internal/common/x;I[B)V

    return-object v6
.end method

.method static synthetic e(Lcom/google/android/gms/internal/common/g0;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/g0;->h(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/common/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/common/g0;->b:Z

    return p0
.end method

.method private final h(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/common/g0;->c:Lcom/google/android/gms/internal/common/d0;

    new-instance v1, Lcom/google/android/gms/internal/common/c0;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/common/c0;-><init>(Lcom/google/android/gms/internal/common/d0;Lcom/google/android/gms/internal/common/g0;Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/common/g0;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/common/g0;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/g0;->c:Lcom/google/android/gms/internal/common/d0;

    iget-object v3, p0, Lcom/google/android/gms/internal/common/g0;->a:Lcom/google/android/gms/internal/common/x;

    const/4 v2, 0x1

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/common/g0;-><init>(Lcom/google/android/gms/internal/common/d0;ZLcom/google/android/gms/internal/common/x;I[B)V

    return-object v6
.end method

.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/common/e0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/common/e0;-><init>(Lcom/google/android/gms/internal/common/g0;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/g0;->h(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
