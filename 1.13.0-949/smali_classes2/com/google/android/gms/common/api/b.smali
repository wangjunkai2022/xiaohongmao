.class public final Lcom/google/android/gms/common/api/b;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "Lcom/google/android/gms/common/api/c;",
        ">;"
    }
.end annotation


# instance fields
.field private r:I

.field private s:Z

.field private t:Z

.field private final u:[Lcom/google/android/gms/common/api/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/gms/common/api/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final v:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/x;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/i;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->v:Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/b;->r:I

    .line 3
    new-array p2, p2, [Lcom/google/android/gms/common/api/l;

    iput-object p2, p0, Lcom/google/android/gms/common/api/b;->u:[Lcom/google/android/gms/common/api/l;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/api/l;

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->u:[Lcom/google/android/gms/common/api/l;

    .line 7
    aput-object p3, v0, p2

    new-instance v0, Lcom/google/android/gms/common/api/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/w;-><init>(Lcom/google/android/gms/common/api/b;)V

    .line 8
    invoke-virtual {p3, v0}, Lcom/google/android/gms/common/api/l;->c(Lcom/google/android/gms/common/api/l$a;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/c;

    sget-object p3, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/common/api/c;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/l;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/google/android/gms/common/api/b;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/b;->t:Z

    return-void
.end method

.method static bridge synthetic B(Lcom/google/android/gms/common/api/b;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/b;->r:I

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    return-void
.end method

.method static bridge synthetic D(Lcom/google/android/gms/common/api/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/b;->s:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/google/android/gms/common/api/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/b;->t:Z

    return p0
.end method

.method static bridge synthetic F(Lcom/google/android/gms/common/api/b;)[Lcom/google/android/gms/common/api/l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->u:[Lcom/google/android/gms/common/api/l;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/google/android/gms/common/api/b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/b;->r:I

    return p0
.end method

.method static bridge synthetic y(Lcom/google/android/gms/common/api/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/b;->v:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/google/android/gms/common/api/b;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/b;->s:Z

    return-void
.end method


# virtual methods
.method public f()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/b;->u:[Lcom/google/android/gms/common/api/l;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/l;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/q;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/b;->w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/c;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/c;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/b;->u:[Lcom/google/android/gms/common/api/l;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/c;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/l;)V

    return-object v0
.end method
