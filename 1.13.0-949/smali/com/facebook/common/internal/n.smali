.class public Lcom/facebook/common/internal/n;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/common/internal/n$b;

    invoke-direct {v0}, Lcom/facebook/common/internal/n$b;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/n;->a:Lcom/facebook/common/internal/m;

    .line 2
    new-instance v0, Lcom/facebook/common/internal/n$c;

    invoke-direct {v0}, Lcom/facebook/common/internal/n$c;-><init>()V

    sput-object v0, Lcom/facebook/common/internal/n;->b:Lcom/facebook/common/internal/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/facebook/common/internal/m;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/facebook/common/internal/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/common/internal/n$a;

    invoke-direct {v0, p0}, Lcom/facebook/common/internal/n$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
