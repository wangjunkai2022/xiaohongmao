.class final Lcom/google/common/collect/x2$l;
.super Lcom/google/common/collect/b;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final e:Lcom/google/common/collect/l5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/x2$l;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/x2$l;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/x2$l;->e:Lcom/google/common/collect/l5;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/b;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/x2$l;->c:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/common/collect/x2$l;->d:I

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x2$l;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/x2$l;->d:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
