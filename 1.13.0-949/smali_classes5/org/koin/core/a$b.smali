.class final Lorg/koin/core/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinApplication.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/a;->h(Ljava/util/List;)Lorg/koin/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lorg/koin/core/a;

.field final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/koin/core/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/a;",
            "Ljava/util/List<",
            "Lx8/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/a$b;->a:Lorg/koin/core/a;

    iput-object p2, p0, Lorg/koin/core/a$b;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/a$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/koin/core/a$b;->a:Lorg/koin/core/a;

    iget-object v1, p0, Lorg/koin/core/a$b;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/koin/core/a;->a(Lorg/koin/core/a;Ljava/util/List;)V

    return-void
.end method
