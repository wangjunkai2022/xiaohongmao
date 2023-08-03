.class public final Lcom/im/freechat/domain/usecase/auth/j$a;
.super Ljava/lang/Object;
.source "SignInViaSmsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/domain/usecase/auth/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\t\u001a\u0004\u0008\u0003\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/im/freechat/domain/usecase/auth/j$a;",
        "",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "a",
        "Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "b",
        "()Lcom/im/freechat/shared/entities/auth/PhoneNumber;",
        "phoneNumber",
        "",
        "I",
        "()I",
        "code",
        "<init>",
        "(Lcom/im/freechat/shared/entities/auth/PhoneNumber;I)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/im/freechat/shared/entities/auth/PhoneNumber;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/im/freechat/shared/entities/auth/PhoneNumber;I)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/auth/PhoneNumber;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/domain/usecase/auth/j$a;->a:Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    .line 3
    iput p2, p0, Lcom/im/freechat/domain/usecase/auth/j$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/domain/usecase/auth/j$a;->b:I

    return v0
.end method

.method public final b()Lcom/im/freechat/shared/entities/auth/PhoneNumber;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/domain/usecase/auth/j$a;->a:Lcom/im/freechat/shared/entities/auth/PhoneNumber;

    return-object v0
.end method
