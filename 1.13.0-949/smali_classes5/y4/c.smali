.class public final synthetic Ly4/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly4/c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Ly4/e;->b(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Throwable;)V

    return-void
.end method
