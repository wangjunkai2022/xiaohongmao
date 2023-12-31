package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuWrapperICS extends BaseMenuWrapper implements Menu {
    private final SupportMenu mWrappedObject;

    public MenuWrapperICS(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu != null) {
            this.mWrappedObject = supportMenu;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i4, int i10, int i11, ComponentName componentName, Intent[] intentArr, Intent intent, int i12, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = this.mWrappedObject.addIntentOptions(i4, i10, i11, componentName, intentArr, intent, i12, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i13 = 0; i13 < length; i13++) {
                menuItemArr[i13] = getMenuItemWrapper(menuItemArr2[i13]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        internalClear();
        this.mWrappedObject.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.mWrappedObject.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i4) {
        return getMenuItemWrapper(this.mWrappedObject.findItem(i4));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i4) {
        return getMenuItemWrapper(this.mWrappedObject.getItem(i4));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.mWrappedObject.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i4, KeyEvent keyEvent) {
        return this.mWrappedObject.isShortcutKey(i4, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i4, int i10) {
        return this.mWrappedObject.performIdentifierAction(i4, i10);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i4, KeyEvent keyEvent, int i10) {
        return this.mWrappedObject.performShortcut(i4, keyEvent, i10);
    }

    @Override // android.view.Menu
    public void removeGroup(int i4) {
        internalRemoveGroup(i4);
        this.mWrappedObject.removeGroup(i4);
    }

    @Override // android.view.Menu
    public void removeItem(int i4) {
        internalRemoveItem(i4);
        this.mWrappedObject.removeItem(i4);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i4, boolean z9, boolean z10) {
        this.mWrappedObject.setGroupCheckable(i4, z9, z10);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i4, boolean z9) {
        this.mWrappedObject.setGroupEnabled(i4, z9);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i4, boolean z9) {
        this.mWrappedObject.setGroupVisible(i4, z9);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z9) {
        this.mWrappedObject.setQwertyMode(z9);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mWrappedObject.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i4) {
        return getMenuItemWrapper(this.mWrappedObject.add(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i4) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i4, int i10, int i11, CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(i4, i10, i11, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i4, int i10, int i11, CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i4, i10, i11, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i4, int i10, int i11, int i12) {
        return getMenuItemWrapper(this.mWrappedObject.add(i4, i10, i11, i12));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i4, int i10, int i11, int i12) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(i4, i10, i11, i12));
    }
}
