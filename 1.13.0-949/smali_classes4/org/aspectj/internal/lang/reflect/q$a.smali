.class final Lorg/aspectj/internal/lang/reflect/q$a;
.super Ljava/lang/Object;
.source "StringToType.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aspectj/internal/lang/reflect/q;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/reflect/Type;

.field final synthetic b:Ljava/lang/Class;


# direct methods
.method constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/q$a;->a:[Ljava/lang/reflect/Type;

    iput-object p2, p0, Lorg/aspectj/internal/lang/reflect/q$a;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/q$a;->a:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/q$a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/q$a;->b:Ljava/lang/Class;

    return-object v0
.end method
