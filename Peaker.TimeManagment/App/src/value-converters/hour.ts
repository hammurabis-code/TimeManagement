export class HourValueConverter {
    public toView(value) {
        if ((+value).toFixed(2) != (Math.round(value * 4) / 4).toFixed(2)) {
            return +(Math.round(value * 4) / 4).toFixed(2);
        }
        else {
            return value;
        }
    }

    public fromView(value) {
        if ((+value).toFixed(2) != (Math.round(value * 4) / 4).toFixed(2)) {
            return +(Math.round(value * 4) / 4).toFixed(2);
        }
        else {
            return value;
        }
    }
}