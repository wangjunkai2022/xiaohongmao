.class public interface abstract annotation Lcom/facebook/infer/annotation/Nullsafe;
.super Ljava/lang/Object;
.source "Nullsafe.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/facebook/infer/annotation/Nullsafe;
        trustOnly = .subannotation Lcom/facebook/infer/annotation/Nullsafe$a;
            trustAll = true
            value = {}
        .end subannotation
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/infer/annotation/Nullsafe$a;,
        Lcom/facebook/infer/annotation/Nullsafe$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/annotations/jvm/UnderMigration;
    status = .enum Lkotlin/annotations/jvm/MigrationStatus;->STRICT:Lkotlin/annotations/jvm/MigrationStatus;
.end annotation

.annotation runtime Lr7/g;
.end annotation

.annotation runtime Lt7/d;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract trustOnly()Lcom/facebook/infer/annotation/Nullsafe$a;
.end method

.method public abstract value()Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end method
